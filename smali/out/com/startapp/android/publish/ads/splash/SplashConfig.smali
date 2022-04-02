.class public Lcom/startapp/android/publish/ads/splash/SplashConfig;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;,
        Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;,
        Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;,
        Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;
    }
.end annotation


# static fields
.field private static DEFAULT_MAX_LOAD:J = 0x1d4cL

.field private static final INT_EMPTY_VALUE:I = -0x1

.field private static final STRING_EMPTY_VALUE:Ljava/lang/String; = ""

.field private static final VALUE_DEFAULT_HTML_BG_COLOR:Ljava/lang/String; = "#066CAA"

.field private static final VALUE_DEFAULT_HTML_FONT_COLOR:Ljava/lang/String; = "ffffff"

.field private static final VALUE_DEFAULT_HTML_LOADING_TYPE:Ljava/lang/String; = "LoadingDots"

.field private static final VALUE_DEFAULT_HTML_SPLASH:Z = true

.field private static final VALUE_DEFAULT_MAXADDISPLAY:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

.field private static final VALUE_DEFAULT_MAXLOAD:J

.field private static final VALUE_DEFAULT_MINSPLASHTIME:Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;

.field private static final VALUE_DEFAULT_ORIENTATION:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

.field private static final VALUE_DEFAULT_THEME:Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appName:Ljava/lang/String;

.field private customScreen:I

.field private defaultMaxAdDisplayTime:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;
    .end annotation
.end field

.field private defaultMaxLoadTime:Ljava/lang/Long;

.field private defaultMinSplashTime:Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;
    .end annotation
.end field

.field private defaultOrientation:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;
    .end annotation
.end field

.field private defaultTheme:Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;
    .end annotation
.end field

.field private transient errMsg:Ljava/lang/String;

.field private forceNative:Z

.field private htmlSplash:Z

.field private transient logo:Landroid/graphics/drawable/Drawable;

.field private logoByteArray:[B

.field private logoRes:I

.field private splashBgColor:Ljava/lang/String;

.field private splashFontColor:Ljava/lang/String;

.field private splashLoadingType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    sget-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;->OCEAN:Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;

    sput-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->VALUE_DEFAULT_THEME:Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;

    .line 36
    sget-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;->REGULAR:Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;

    sput-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->VALUE_DEFAULT_MINSPLASHTIME:Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;

    .line 37
    sget-wide v0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->DEFAULT_MAX_LOAD:J

    sput-wide v0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->VALUE_DEFAULT_MAXLOAD:J

    .line 38
    sget-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;->FOR_EVER:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    sput-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->VALUE_DEFAULT_MAXADDISPLAY:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    .line 39
    sget-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->AUTO:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    sput-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->VALUE_DEFAULT_ORIENTATION:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->forceNative:Z

    const/4 v0, -0x1

    .line 205
    iput v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->customScreen:I

    const-string v1, ""

    .line 208
    iput-object v1, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->appName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 209
    iput-object v2, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->logo:Landroid/graphics/drawable/Drawable;

    .line 210
    iput-object v2, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->logoByteArray:[B

    .line 211
    iput v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->logoRes:I

    .line 214
    sget-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->VALUE_DEFAULT_THEME:Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->defaultTheme:Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;

    .line 216
    sget-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->VALUE_DEFAULT_MINSPLASHTIME:Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->defaultMinSplashTime:Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;

    .line 218
    sget-wide v2, Lcom/startapp/android/publish/ads/splash/SplashConfig;->VALUE_DEFAULT_MAXLOAD:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->defaultMaxLoadTime:Ljava/lang/Long;

    .line 219
    sget-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->VALUE_DEFAULT_MAXADDISPLAY:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->defaultMaxAdDisplayTime:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    .line 221
    sget-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->VALUE_DEFAULT_ORIENTATION:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->defaultOrientation:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->htmlSplash:Z

    const-string v0, "#066CAA"

    .line 226
    iput-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->splashBgColor:Ljava/lang/String;

    const-string v0, "ffffff"

    .line 227
    iput-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->splashFontColor:Ljava/lang/String;

    const-string v0, "LoadingDots"

    .line 228
    iput-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->splashLoadingType:Ljava/lang/String;

    .line 230
    iput-object v1, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->errMsg:Ljava/lang/String;

    return-void
.end method

.method private static applyDefaultSplashConfig(Lcom/startapp/android/publish/ads/splash/SplashConfig;Landroid/content/Context;)V
    .registers 5

    .line 246
    invoke-static {}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getDefaultSplashConfig()Lcom/startapp/android/publish/ads/splash/SplashConfig;

    move-result-object v0

    .line 248
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getTheme()Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;

    move-result-object v1

    if-nez v1, :cond_11

    .line 249
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getTheme()Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setTheme(Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    .line 252
    :cond_11
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getMinSplashTime()Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 253
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getMinSplashTime()Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setMinSplashTime(Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    .line 256
    :cond_1e
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getMaxLoadAdTimeout()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_2f

    .line 257
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getMaxLoadAdTimeout()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setMaxLoadAdTimeout(J)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    .line 260
    :cond_2f
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getMaxAdDisplayTime()Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v1

    if-nez v1, :cond_3c

    .line 261
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getMaxAdDisplayTime()Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setMaxAdDisplayTime(Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    .line 264
    :cond_3c
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getOrientation()Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    move-result-object v1

    if-nez v1, :cond_49

    .line 265
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getOrientation()Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setOrientation(Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    .line 268
    :cond_49
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getLoadingType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_56

    .line 269
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getLoadingType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setLoadingType(Ljava/lang/String;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    .line 272
    :cond_56
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getAppName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string v0, "Welcome!"

    .line 273
    invoke-static {p1, v0}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setAppName(Ljava/lang/String;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    :cond_6b
    return-void
.end method

.method public static getDefaultSplashConfig()Lcom/startapp/android/publish/ads/splash/SplashConfig;
    .registers 4

    .line 236
    new-instance v0, Lcom/startapp/android/publish/ads/splash/SplashConfig;

    invoke-direct {v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;-><init>()V

    .line 238
    sget-object v1, Lcom/startapp/android/publish/ads/splash/SplashConfig;->VALUE_DEFAULT_THEME:Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setTheme(Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/ads/splash/SplashConfig;->VALUE_DEFAULT_MINSPLASHTIME:Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setMinSplashTime(Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    move-result-object v1

    sget-wide v2, Lcom/startapp/android/publish/ads/splash/SplashConfig;->VALUE_DEFAULT_MAXLOAD:J

    .line 239
    invoke-virtual {v1, v2, v3}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setMaxLoadAdTimeout(J)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/ads/splash/SplashConfig;->VALUE_DEFAULT_MAXADDISPLAY:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setMaxAdDisplayTime(Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/ads/splash/SplashConfig;->VALUE_DEFAULT_ORIENTATION:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    .line 240
    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setOrientation(Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    move-result-object v1

    const-string v2, "LoadingDots"

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setLoadingType(Ljava/lang/String;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setAppName(Ljava/lang/String;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    return-object v0
.end method

.method private setErrorMsg(Ljava/lang/String;)V
    .registers 2

    .line 384
    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->errMsg:Ljava/lang/String;

    return-void
.end method

.method private setLogo(Landroid/graphics/drawable/Drawable;)Lcom/startapp/android/publish/ads/splash/SplashConfig;
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->logo:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private setSplashColorsByTheme(Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;)V
    .registers 5

    .line 294
    sget-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$1;->$SwitchMap$com$startapp$android$publish$ads$splash$SplashConfig$Theme:[I

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "#333333"

    const-string v1, "#FFFFFF"

    const-string v2, "#066CAA"

    packed-switch p1, :pswitch_data_2e

    const-string v0, "ffffff"

    goto :goto_28

    :pswitch_14
    const-string v0, "#063D51"

    const-string v2, "#237C9A"

    goto :goto_28

    :pswitch_19
    const-string v0, "#33B5E5"

    const-string v2, "#2F353F"

    goto :goto_28

    :pswitch_1e
    const-string v2, "#FF6600"

    goto :goto_27

    :pswitch_21
    const-string v2, "#E3E3E3"

    goto :goto_28

    :pswitch_24
    const-string v2, "#a3d4e5"

    goto :goto_28

    :goto_27
    :pswitch_27
    move-object v0, v1

    .line 322
    :goto_28
    iput-object v2, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->splashBgColor:Ljava/lang/String;

    .line 323
    iput-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->splashFontColor:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_19
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 2

    .line 393
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getBgColor()Ljava/lang/String;
    .registers 2

    .line 442
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->splashBgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomScreen()I
    .registers 2

    .line 389
    iget v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->customScreen:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 413
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getFontColor()Ljava/lang/String;
    .registers 2

    .line 446
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->splashFontColor:Ljava/lang/String;

    return-object v0
.end method

.method protected getLayout(Landroid/content/Context;)Landroid/view/View;
    .registers 7

    .line 509
    sget-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$1;->$SwitchMap$com$startapp$android$publish$ads$splash$SplashConfig$Theme:[I

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getTheme()Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_15

    .line 527
    invoke-static {p1, p0}, Lcom/startapp/android/publish/ads/splash/i;->a(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;

    move-result-object v1

    goto :goto_34

    :cond_15
    :try_start_15
    const-string v0, "layout_inflater"

    .line 512
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 514
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getCustomScreen()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_25} :catch_3d
    .catch Landroid/view/InflateException; {:try_start_15 .. :try_end_25} :catch_35
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_25} :catch_26

    goto :goto_34

    :catch_26
    move-exception v0

    .line 522
    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SplashConfig.getLayout - System service failed"

    const-string v4, ""

    invoke-static {p1, v2, v3, v0, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    return-object v1

    .line 518
    :catch_35
    new-instance p1, Landroid/view/InflateException;

    const-string v0, "StartApp: Can\'t inflate layout in Custom mode, Are you sure layout resource is valid?"

    invoke-direct {p1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 516
    :catch_3d
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    const-string v0, "StartApp: Can\'t find Custom layout resource"

    invoke-direct {p1, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLoadingType()Ljava/lang/String;
    .registers 2

    .line 450
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->splashLoadingType:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->logo:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLogoByteArray()[B
    .registers 2

    .line 405
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->logoByteArray:[B

    return-object v0
.end method

.method public getLogoRes()I
    .registers 2

    .line 401
    iget v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->logoRes:I

    return v0
.end method

.method public getMaxAdDisplayTime()Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->defaultMaxAdDisplayTime:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    return-object v0
.end method

.method protected getMaxLoadAdTimeout()Ljava/lang/Long;
    .registers 2

    .line 409
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->defaultMaxLoadTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getMinSplashTime()Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;
    .registers 2

    .line 425
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->defaultMinSplashTime:Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;

    return-object v0
.end method

.method public getOrientation()Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;
    .registers 2

    .line 421
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->defaultOrientation:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    return-object v0
.end method

.method protected getTheme()Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;
    .registers 2

    .line 417
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->defaultTheme:Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;

    return-object v0
.end method

.method protected initSplashHtml(Landroid/app/Activity;)Lcom/startapp/android/publish/ads/splash/d;
    .registers 3

    .line 593
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getTheme()Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setSplashColorsByTheme(Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;)V

    .line 595
    new-instance v0, Lcom/startapp/android/publish/ads/splash/d;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/ads/splash/d;-><init>(Landroid/app/Activity;)V

    .line 596
    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/ads/splash/d;->b(Lcom/startapp/android/publish/ads/splash/SplashConfig;)V

    .line 597
    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/ads/splash/d;->a(Lcom/startapp/android/publish/ads/splash/SplashConfig;)V

    return-object v0
.end method

.method protected initSplashLogo(Landroid/app/Activity;)V
    .registers 5

    .line 583
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getLogoRes()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getLogoByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_29

    .line 584
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getLogoByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 585
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 586
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 587
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setLogo(Landroid/graphics/drawable/Drawable;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    :cond_29
    return-void
.end method

.method public isHtmlSplash()Z
    .registers 2

    .line 434
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->forceNative:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 437
    :cond_6
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->htmlSplash:Z

    return v0
.end method

.method isUserDefinedSplash()Z
    .registers 3

    .line 626
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getTheme()Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;->USER_DEFINED:Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;

    if-eq v0, v1, :cond_12

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getCustomScreen()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/startapp/android/publish/ads/splash/SplashConfig;
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public setCustomScreen(I)Lcom/startapp/android/publish/ads/splash/SplashConfig;
    .registers 2

    .line 327
    iput p1, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->customScreen:I

    return-object p0
.end method

.method public setDefaults(Landroid/content/Context;)V
    .registers 5

    .line 539
    invoke-static {}, Lcom/startapp/android/publish/ads/splash/f;->b()Lcom/startapp/android/publish/ads/splash/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/f;->a()Lcom/startapp/android/publish/ads/splash/SplashConfig;

    move-result-object v0

    if-nez v0, :cond_f

    .line 542
    invoke-static {}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getDefaultSplashConfig()Lcom/startapp/android/publish/ads/splash/SplashConfig;

    move-result-object v0

    goto :goto_16

    .line 544
    :cond_f
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->isHtmlSplash()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setHtmlSplash(Z)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    .line 546
    :goto_16
    invoke-static {v0, p1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->applyDefaultSplashConfig(Lcom/startapp/android/publish/ads/splash/SplashConfig;Landroid/content/Context;)V

    .line 549
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getMaxAdDisplayTime()Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v1

    if-nez v1, :cond_26

    .line 550
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getMaxAdDisplayTime()Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setMaxAdDisplayTime(Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    .line 553
    :cond_26
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getMaxLoadAdTimeout()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_37

    .line 554
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getMaxLoadAdTimeout()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setMaxLoadAdTimeout(J)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    .line 557
    :cond_37
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getMinSplashTime()Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;

    move-result-object v1

    if-nez v1, :cond_44

    .line 558
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getMinSplashTime()Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setMinSplashTime(Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    .line 561
    :cond_44
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getOrientation()Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    move-result-object v1

    if-nez v1, :cond_51

    .line 562
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getOrientation()Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setOrientation(Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    .line 565
    :cond_51
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getTheme()Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;

    move-result-object v1

    if-nez v1, :cond_5e

    .line 566
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getTheme()Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setTheme(Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    .line 569
    :cond_5e
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getLogoRes()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6e

    .line 570
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setLogo(I)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    .line 573
    :cond_6e
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getAppName()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    if-ne p1, v1, :cond_7d

    .line 574
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setAppName(Ljava/lang/String;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    :cond_7d
    return-void
.end method

.method protected setHtmlSplash(Z)Lcom/startapp/android/publish/ads/splash/SplashConfig;
    .registers 2

    .line 379
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->htmlSplash:Z

    return-object p0
.end method

.method public setLoadingType(Ljava/lang/String;)Lcom/startapp/android/publish/ads/splash/SplashConfig;
    .registers 2

    .line 454
    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->splashLoadingType:Ljava/lang/String;

    return-object p0
.end method

.method public setLogo(I)Lcom/startapp/android/publish/ads/splash/SplashConfig;
    .registers 2

    .line 339
    iput p1, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->logoRes:I

    return-object p0
.end method

.method public setLogo([B)Lcom/startapp/android/publish/ads/splash/SplashConfig;
    .registers 2

    .line 345
    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->logoByteArray:[B

    return-object p0
.end method

.method public setMaxAdDisplayTime(Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;)Lcom/startapp/android/publish/ads/splash/SplashConfig;
    .registers 2

    .line 374
    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->defaultMaxAdDisplayTime:Lcom/startapp/android/publish/ads/splash/SplashConfig$MaxAdDisplayTime;

    return-object p0
.end method

.method protected setMaxLoadAdTimeout(J)Lcom/startapp/android/publish/ads/splash/SplashConfig;
    .registers 3

    .line 357
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->defaultMaxLoadTime:Ljava/lang/Long;

    return-object p0
.end method

.method public setMinSplashTime(Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;)Lcom/startapp/android/publish/ads/splash/SplashConfig;
    .registers 2

    .line 369
    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->defaultMinSplashTime:Lcom/startapp/android/publish/ads/splash/SplashConfig$MinSplashTime;

    return-object p0
.end method

.method public setOrientation(Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;)Lcom/startapp/android/publish/ads/splash/SplashConfig;
    .registers 2

    .line 363
    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->defaultOrientation:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    return-object p0
.end method

.method public setTheme(Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;)Lcom/startapp/android/publish/ads/splash/SplashConfig;
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/SplashConfig;->defaultTheme:Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;

    return-object p0
.end method

.method protected validate(Landroid/content/Context;)Z
    .registers 5

    .line 466
    sget-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$1;->$SwitchMap$com$startapp$android$publish$ads$splash$SplashConfig$Theme:[I

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getTheme()Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_62

    .line 482
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getAppName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "Welcome!"

    .line 484
    invoke-static {p1, v0}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setAppName(Ljava/lang/String;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    .line 488
    :cond_25
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_6f

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getLogoByteArray()[B

    move-result-object v0

    if-nez v0, :cond_6f

    .line 489
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getLogoRes()I

    move-result v0

    if-ne v0, v1, :cond_52

    .line 491
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setLogo(I)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    .line 492
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setLogo(Landroid/graphics/drawable/Drawable;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    goto :goto_6f

    .line 494
    :cond_52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getLogoRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setLogo(Landroid/graphics/drawable/Drawable;)Lcom/startapp/android/publish/ads/splash/SplashConfig;

    goto :goto_6f

    .line 469
    :cond_62
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getCustomScreen()I

    move-result p1

    if-ne p1, v1, :cond_6f

    const/4 p1, 0x0

    const-string v0, "StartApp: Exception getting custom screen resource id, make sure it is set"

    .line 471
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setErrorMsg(Ljava/lang/String;)V

    goto :goto_70

    :cond_6f
    :goto_6f
    const/4 p1, 0x1

    :goto_70
    return p1
.end method
