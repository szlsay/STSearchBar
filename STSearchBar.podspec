Pod::Spec.new do |s|
s.name     = 'STSearchBar'
s.version  = '0.0.2'
s.license = { :type => 'MIT', :file => 'LICENSE'}
s.summary  = '一个自定义的搜索框'
s.homepage = 'https://github.com/STShenZhaoliang/STSearchBar'
s.author   = { 'STShenZhaoliang' => '409178030@qq.com' }
s.source   = {
:git => 'https://github.com/STShenZhaoliang/STSearchBar.git',
:tag => s.version.to_s
}
s.ios.deployment_target = '7.0'
s.source_files = 'STSearchBar/Source/*'
s.resources = 'STSearchBar/Resources/*'
s.requires_arc = true
end