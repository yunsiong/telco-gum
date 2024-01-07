vapis = [
  'telco-gum-@0@.vapi'.format(api_version),
  'telco-gum-heap-@0@.vapi'.format(api_version),
]

if host_os_family == 'darwin'
  vapis += ['telco-gum-darwin-@0@.vapi'.format(api_version)]
endif

if host_os_family == 'linux'
  vapis += ['telco-gum-linux-@0@.vapi'.format(api_version)]
endif

if host_os_family == 'freebsd'
  vapis += ['telco-gum-freebsd-@0@.vapi'.format(api_version)]
endif

if have_gumjs
  vapis += [
    'telco-gumjs-@0@.vapi'.format(api_version),
    'telco-gumjs-inspector-@0@.vapi'.format(api_version),
  ]
endif

install_data(vapis, install_dir: 'share/vala/vapi')
