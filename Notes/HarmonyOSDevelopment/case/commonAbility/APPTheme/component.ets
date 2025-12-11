import text from '@ohos.graphics.text';
import { defaultAppTheme, getThemeMainColor } from './AppTheme';

@Component
export struct component {
    //调用主题
    @State myTheme: CustomTheme = defaultAppTheme
    // 可以改成接受

    build() {
        Column() {
            WithTheme({ theme : this.myTheme }) {
                Text('根据系统token值变色，此为一级标题，自动变色')

                Column() {
                    Toggle({ type: ToggleType.Switch }) {

                    } // 这里的Toggle底色同样会根据系统token值变色
                    // .backgroundColor($r('app.color.takanashi')) 如果单独设置背景色则会优先使用设置的背景色
                }
                .width(30)
                .aspectRatio(1)
                .backgroundColor(getThemeMainColor(this.myTheme))
            }
        }
    }
}