import { Colors, CustomColors, CustomTheme } from '@ohos.arkui.theme'

// 在class中没有声明的颜色将保持系统默认缺省的token值

// 默认主题
export class DefaultColors implements CustomColors {
  brand?: ResourceColor | undefined = $r('app.color.celestmoe_main_color')
  fontPrimary?: ResourceColor | undefined = $r('app.color.standard_font_color')
  fontSecondary?: ResourceColor | undefined = $r('app.color.main_grey')
  fontOnSecondary?: ResourceColor | undefined = $r('app.color.main_grey')
  fontOnPrimary?: ResourceColor | undefined = $r('app.color.standard_font_color_vice')
  iconPrimary?: ResourceColor | undefined = $r('app.color.celestmoe_main_color')
  iconSecondary?: ResourceColor | undefined = $r('app.color.celestmoe_vice_color')
}

export class DefaultTheme implements CustomTheme {
  public colors: DefaultColors = new DefaultColors()
}

export const defaultAppTheme: CustomTheme = new DefaultTheme()


// 星乐主题
export class HoshinoColors implements CustomColors {
  brand?: ResourceColor | undefined = $r('app.color.hoshino_main_color')
  fontPrimary?: ResourceColor | undefined = $r('app.color.standard_font_color')
  fontSecondary?: ResourceColor | undefined = $r('app.color.main_grey')
  fontOnSecondary?: ResourceColor | undefined = $r('app.color.main_grey')
  fontOnPrimary?: ResourceColor | undefined = $r('app.color.standard_font_color_vice')
  iconPrimary?: ResourceColor | undefined = $r('app.color.hoshino_main_color')
  iconSecondary?: ResourceColor | undefined = $r('app.color.hoshino_vice_color')
}

export class HoshinoTheme implements CustomTheme {
  public colors: HoshinoColors = new HoshinoColors()
}

export const hoshinoAppTheme: CustomTheme = new HoshinoTheme()

// 红色主题
export class RedColors implements CustomColors {
  brand?: ResourceColor | undefined = Color.Red
  fontPrimary?: ResourceColor | undefined = $r('app.color.standard_font_color')
  fontSecondary?: ResourceColor | undefined = $r('app.color.main_grey')
  fontOnSecondary?: ResourceColor | undefined = $r('app.color.main_grey')
  fontOnPrimary?: ResourceColor | undefined = $r('app.color.standard_font_color_vice')
  iconPrimary?: ResourceColor | undefined = Color.Red
  iconSecondary?: ResourceColor | undefined = Color.Red
}

export class RedTheme implements CustomTheme {
  public colors: RedColors = new RedColors()
}

export const redAppTheme: CustomTheme = new RedTheme()


// 黄色主题
export class YellowColors implements CustomColors {
  brand?: ResourceColor | undefined = Color.Yellow
  fontPrimary?: ResourceColor | undefined = $r('app.color.standard_font_color')
  fontSecondary?: ResourceColor | undefined = $r('app.color.main_grey')
  fontOnSecondary?: ResourceColor | undefined = $r('app.color.main_grey')
  fontOnPrimary?: ResourceColor | undefined = $r('app.color.standard_font_color_vice')
  iconPrimary?: ResourceColor | undefined = Color.Yellow
  iconSecondary?: ResourceColor | undefined = Color.Yellow
}

export class YellowTheme implements CustomTheme {
  public color: YellowColors = new YellowColors()
}

export const yellowAppTheme: CustomTheme = new YellowTheme()


export function getThemeMainColor(key: CustomTheme): Resource {
  if (key === defaultAppTheme) {
    return $r('app.color.celestmoe_main_color')
  }
  if (key === hoshinoAppTheme) {
    return $r('app.color.hoshino_main_color')
  }
  if (key === redAppTheme) {
    return Color.Red
  }
  if (key === yellowAppTheme) {
    return Color.Yellow
  }
  else {
    return $r('app.color.celestmoe_main_color')
  }
}
