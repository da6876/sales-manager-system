<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        @php
            $currentRoute = request()->route()->getName();
            $dotPosition = strpos($currentRoute, '.');
            if (strpos($currentRoute, '.') !== false) {
                $dotPosition = strpos($currentRoute, '.');
                $currentRoute = substr($currentRoute, 0, $dotPosition);
            }
        @endphp

        @foreach ($navItems as $item)
            @if (!$item->is_heading)
                @php
                    $isActive = $item->url == $currentRoute || $item->children->contains(function($child) use ($currentRoute) {
                        return $child->url == $currentRoute;
                    });
                @endphp

                @if ($item->url == "#")
                    <li class="nav-item {{ $isActive ? 'active' : '' }}">
                        <a class="nav-link {{ $isActive ? '' : 'collapsed' }}" data-bs-target="#{{ Str::slug($item->name) }}-nav" data-bs-toggle="collapse" href="{{ url($item->url) }}">
                            <i class="{{ $item->icon }}"></i><span>{{ $item->name }}</span><i class="bi bi-chevron-down ms-auto"></i>
                        </a>
                        <ul id="{{ Str::slug($item->name) }}-nav" class="nav-content collapse {{ $isActive ? 'show' : '' }}" data-bs-parent="#sidebar-nav">
                            @foreach ($item->children as $child)
                                @php
                                    $isChildActive = $child->url == $currentRoute;
                                @endphp
                                <li class="{{ $isChildActive ? 'active' : '' }}">
                                    <a href="{{ url($child->url) }}" class="{{ $isChildActive ? 'active' : '' }}">
                                        <i class="bi bi-circle"></i><span>{{ $child->name }}</span>
                                    </a>
                                </li>
                            @endforeach
                        </ul>
                    </li>
                @else
                    <li class="nav-item">
                        <a class="nav-link {{ $isActive ? '' : 'collapsed' }}" href="{{ url($item->url) }}">
                            <i class="{{ $item->icon }}"></i>
                            <span>{{ $item->name }}</span>
                        </a>
                    </li>
                @endif
            @else
                <li class="nav-heading">{{ $item->name }}</li>
            @endif
        @endforeach

        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>{{ request()->route()->getName() }}</span>
            </a>
        </li>
        <!-- End F.A.Q Page Nav -->

    </ul>
</aside>

{{--<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        @foreach ($navItems as $item)
            @if (!$item->is_heading)
                @php
                    $isExpanded = '0';
                    $isExpanded1 = '0';
                    $currentRouteName = Route::currentRouteName();

                    foreach ($item->children as $childs) {
                        $isUrl =$childs->url;
                        if($currentRouteName == $childs->url){
                            $isExpanded1 ='1';
                        }else{
                            $isExpanded1 ='0';
                        }
                        echo $isExpanded1;
                    }
                @endphp
                <li class="nav-item">
                    <a class="nav-link {{ $isExpanded1 == '1' ? '' : 'collapsed' }}" data-bs-target="#{{ Str::slug($item->name) }}-nav"
                       data-bs-toggle="{{ $item->children->isNotEmpty() ? 'collapse' : '' }}" href="{{ $item->children->isEmpty() ? $item->url : '#' }}">
                        <i class="{{ $item->icon }}"></i>
                        <span>{{ $item->name }}</span>
                        @if ($item->children->isNotEmpty())
                            <i class="bi bi-chevron-down ms-auto"></i>
                        @endif
                    </a>
                    @if ($item->children->isNotEmpty())
                        <ul id="{{ Str::slug($item->name) }}-nav" class="nav-content collapse {{ $isExpanded1 === '1' ? 'show' : '' }}" data-bs-parent="#sidebar-nav">
                            @foreach ($item->children as $child)
                                @php
                                   $isChildActive = request()->route()->getName();
                                @endphp
                                <li>
                                    <a href="{{ $child->url }}" class="{{ $isChildActive ? 'active' : '' }}">
                                        <i class="{{ $child->icon }}"></i><span>{{ $child->name }}</span>
                                    </a>
                                </li>
                            @endforeach
                        </ul>
                    @endif
                </li>
            @else
                <li class="nav-heading">{{ $item->name }}</li>
            @endif

        @endforeach

        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>{{request()->route()->getName()}}</span>
            </a>
        </li>
        <!-- End F.A.Q Page Nav -->
    </ul>
</aside>--}}

<!-- End Sidebar-->
