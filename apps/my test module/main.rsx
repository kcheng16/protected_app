<App>
  <ModuleContainerWidget
    id="moduleContainer"
    backgroundColor="white"
    isGlobalWidgetContainer={true}
    overflowType="hidden"
  >
    <Text
      id="text1"
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
  </ModuleContainerWidget>
</App>
