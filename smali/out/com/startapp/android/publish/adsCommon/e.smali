.class public abstract Lcom/startapp/android/publish/adsCommon/e;
.super Lcom/startapp/android/publish/adsCommon/Ad;
.source "StartAppSDK"


# static fields
.field protected static a:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adId:Ljava/lang/String;

.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private closingUrl:[Ljava/lang/String;

.field private delayImpressionInSeconds:Ljava/lang/Long;

.field private height:I

.field private htmlUuid:Ljava/lang/String;

.field public inAppBrowserEnabled:[Z

.field private isMraidAd:Z

.field private orientation:I

.field private packageNames:[Ljava/lang/String;

.field private sendRedirectHops:[Ljava/lang/Boolean;

.field public smartRedirect:[Z

.field private trackingClickUrls:[Ljava/lang/String;

.field public trackingUrls:[Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V
    .registers 5

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/Ad;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V

    const-string p1, ""

    .line 32
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/e;->packageNames:[Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/e;->htmlUuid:Ljava/lang/String;

    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/e;->adId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/startapp/android/publish/adsCommon/e;->orientation:I

    .line 42
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/adsCommon/e;->trackingClickUrls:[Ljava/lang/String;

    .line 43
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/adsCommon/e;->closingUrl:[Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/e;->sendRedirectHops:[Ljava/lang/Boolean;

    const/4 p2, 0x1

    new-array v1, p2, [Z

    aput-boolean v0, v1, v0

    .line 47
    iput-object v1, p0, Lcom/startapp/android/publish/adsCommon/e;->smartRedirect:[Z

    .line 48
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/e;->trackingUrls:[Ljava/lang/String;

    new-array p1, p2, [Z

    aput-boolean p2, p1, v0

    .line 50
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/e;->inAppBrowserEnabled:[Z

    .line 51
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/e;->isMraidAd:Z

    .line 92
    sget-object p1, Lcom/startapp/android/publish/adsCommon/e;->a:Ljava/lang/String;

    if-nez p1, :cond_3d

    .line 93
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/e;->a()V

    :cond_3d
    return-void
.end method

.method private a()V
    .registers 2

    .line 106
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/android/publish/adsCommon/e;->a:Ljava/lang/String;

    return-void
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 111
    :try_start_0
    invoke-static {}, Lcom/startapp/android/publish/omsdk/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception v0

    const/4 v1, 0x6

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/e;->context:Landroid/content/Context;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OMSDK: Failed to inject js to html ad."

    const-string v4, ""

    .line 114
    invoke-static {v1, v2, v3, v0, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private g(Ljava/lang/String;)V
    .registers 3

    const-string v0, ","

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "false"

    .line 227
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x0

    .line 228
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/e;->belowMinCPM:Z

    goto :goto_19

    :cond_16
    const/4 p1, 0x1

    .line 231
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/e;->belowMinCPM:Z

    :goto_19
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .registers 6

    const-string v0, ","

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 243
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/e;->inAppBrowserEnabled:[Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 245
    :goto_d
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 246
    aget-object v2, p1, v1

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1f

    .line 248
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/e;->inAppBrowserEnabled:[Z

    aput-boolean v0, v2, v1

    goto :goto_24

    .line 251
    :cond_1f
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/e;->inAppBrowserEnabled:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_27
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .registers 6

    const-string v0, ","

    .line 279
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 280
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/e;->smartRedirect:[Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 282
    :goto_d
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 283
    aget-object v2, p1, v1

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_20

    .line 285
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/e;->smartRedirect:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    goto :goto_24

    .line 287
    :cond_20
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/e;->smartRedirect:[Z

    aput-boolean v0, v2, v1

    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_27
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .registers 3

    const-string v0, ","

    .line 319
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/e;->trackingUrls:[Ljava/lang/String;

    return-void
.end method

.method private k(Ljava/lang/String;)V
    .registers 3

    const-string v0, ","

    .line 331
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/e;->trackingClickUrls:[Ljava/lang/String;

    return-void
.end method

.method private l(Ljava/lang/String;)V
    .registers 3

    const-string v0, ","

    .line 345
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/e;->packageNames:[Ljava/lang/String;

    return-void
.end method

.method private m(Ljava/lang/String;)V
    .registers 3

    .line 361
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 362
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/e;->getAdInfoOverride()Lcom/startapp/android/publish/adsCommon/adinformation/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/adsCommon/adinformation/c;->a(Z)V

    return-void
.end method

.method private n(Ljava/lang/String;)V
    .registers 3

    .line 366
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/e;->getAdInfoOverride()Lcom/startapp/android/publish/adsCommon/adinformation/c;

    move-result-object v0

    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;->getByName(Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/adsCommon/adinformation/c;->a(Lcom/startapp/android/publish/adsCommon/adinformation/AdInformationPositions$Position;)V

    return-void
.end method

.method private o(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_14

    const-string v0, ""

    .line 400
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 402
    :try_start_a
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/e;->delayImpressionInSeconds:Ljava/lang/Long;
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 257
    invoke-static {p1, p2, p2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(II)V
    .registers 3

    .line 86
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/e;->b(I)V

    .line 87
    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/e;->c(I)V

    return-void
.end method

.method protected a(Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;)V
    .registers 4

    const/4 v0, 0x0

    .line 261
    iput v0, p0, Lcom/startapp/android/publish/adsCommon/e;->orientation:I

    const-wide/16 v0, 0x8

    .line 262
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-eqz p1, :cond_26

    if-eqz v0, :cond_19

    .line 265
    sget-object v1, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->PORTRAIT:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    invoke-virtual {p1, v1}, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 p1, 0x1

    .line 266
    iput p1, p0, Lcom/startapp/android/publish/adsCommon/e;->orientation:I

    goto :goto_26

    :cond_19
    if-eqz v0, :cond_26

    .line 267
    sget-object v0, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->LANDSCAPE:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x2

    .line 268
    iput p1, p0, Lcom/startapp/android/publish/adsCommon/e;->orientation:I

    :cond_26
    :goto_26
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/b/a;",
            ">;)V"
        }
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/e;->apps:Ljava/util/List;

    return-void
.end method

.method protected a_()Ljava/lang/String;
    .registers 2

    .line 370
    sget-object v0, Lcom/startapp/android/publish/adsCommon/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    .line 62
    iput p1, p0, Lcom/startapp/android/publish/adsCommon/e;->width:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 7

    .line 121
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->isOmsdkEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 122
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_e
    const-wide/16 v0, 0x200

    .line 124
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 125
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/cache/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/e;->htmlUuid:Ljava/lang/String;

    :cond_20
    const-string v0, "@smartRedirect@"

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 130
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/adsCommon/e;->i(Ljava/lang/String;)V

    :cond_2b
    const-string v0, "@trackingClickUrl@"

    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 135
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/adsCommon/e;->k(Ljava/lang/String;)V

    :cond_36
    const-string v0, "@closeUrl@"

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 141
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/adsCommon/e;->c(Ljava/lang/String;)V

    :cond_41
    const-string v0, "@tracking@"

    .line 145
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 147
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/adsCommon/e;->j(Ljava/lang/String;)V

    :cond_4c
    const-string v0, "@packageName@"

    .line 151
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 153
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/adsCommon/e;->l(Ljava/lang/String;)V

    :cond_57
    const-string v0, "@startappBrowserEnabled@"

    .line 157
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 159
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/adsCommon/e;->h(Ljava/lang/String;)V

    :cond_62
    const-string v0, "@orientation@"

    .line 163
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    const-wide/16 v1, 0x8

    .line 164
    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 165
    invoke-static {v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->getByName(Ljava/lang/String;)Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/adsCommon/e;->a(Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;)V

    :cond_79
    const-string v0, "@adInfoEnable@"

    .line 169
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 171
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/adsCommon/e;->m(Ljava/lang/String;)V

    :cond_84
    const-string v0, "@adInfoPosition@"

    .line 175
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 177
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/adsCommon/e;->n(Ljava/lang/String;)V

    :cond_8f
    const-string v0, "@ttl@"

    .line 181
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 183
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/adsCommon/e;->d(Ljava/lang/String;)V

    :cond_9a
    const-string v0, "@belowMinCPM@"

    .line 188
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a5

    .line 190
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/adsCommon/e;->g(Ljava/lang/String;)V

    :cond_a5
    const-string v0, "@delayImpressionInSeconds@"

    .line 194
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 196
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/adsCommon/e;->o(Ljava/lang/String;)V

    :cond_b0
    const-string v0, "@sendRedirectHops@"

    .line 200
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bb

    .line 202
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/adsCommon/e;->e(Ljava/lang/String;)V

    .line 206
    :cond_bb
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/e;->smartRedirect:[Z

    array-length v0, v0

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/e;->trackingUrls:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_e8

    const/4 v0, 0x6

    const-string v1, "Error in smartRedirect array in HTML"

    .line 207
    invoke-static {v0, v1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/e;->trackingUrls:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 211
    :goto_d0
    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/e;->smartRedirect:[Z

    array-length v4, v3

    if-ge v2, v4, :cond_dc

    .line 212
    aget-boolean v3, v3, v2

    aput-boolean v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d0

    .line 215
    :cond_dc
    :goto_dc
    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/e;->trackingUrls:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_e6

    .line 216
    aput-boolean v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_dc

    .line 219
    :cond_e6
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/e;->smartRedirect:[Z

    .line 222
    :cond_e8
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/g/d/a;->b(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/e;->b(Z)V

    return-void
.end method

.method public b(Z)V
    .registers 2

    .line 444
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/e;->isMraidAd:Z

    return-void
.end method

.method public c(I)V
    .registers 2

    .line 70
    iput p1, p0, Lcom/startapp/android/publish/adsCommon/e;->height:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    const-string v0, ","

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/e;->closingUrl:[Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 10

    const-string v0, ","

    .line 376
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 377
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_30

    aget-object v3, p1, v2

    const-string v4, ""

    .line 378
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 380
    :try_start_15
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2d

    if-eqz v1, :cond_29

    .line 382
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_2d

    .line 383
    :cond_29
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_2d} :catch_2d

    :catch_2d
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_30
    if-eqz v1, :cond_42

    .line 391
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/e;->adCacheTtl:Ljava/lang/Long;

    :cond_42
    return-void
.end method

.method public d(I)Z
    .registers 4

    if-ltz p1, :cond_b

    .line 293
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/e;->smartRedirect:[Z

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_b

    .line 295
    :cond_8
    aget-boolean p1, v0, p1

    return p1

    :cond_b
    :goto_b
    const/4 p1, 0x0

    return p1
.end method

.method public e(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_49

    const-string v0, ""

    .line 420
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, ","

    .line 421
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 422
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/e;->sendRedirectHops:[Ljava/lang/Boolean;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 424
    :goto_17
    array-length v2, p1

    if-ge v1, v2, :cond_49

    .line 425
    aget-object v2, p1, v1

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2e

    .line 427
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/e;->sendRedirectHops:[Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_46

    .line 428
    :cond_2e
    aget-object v2, p1, v1

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_41

    .line 430
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/e;->sendRedirectHops:[Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_46

    .line 433
    :cond_41
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/e;->sendRedirectHops:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_49
    return-void
.end method

.method public e(I)Z
    .registers 4

    .line 307
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/e;->inAppBrowserEnabled:[Z

    if-eqz v0, :cond_c

    if-ltz p1, :cond_c

    array-length v1, v0

    if-ge p1, v1, :cond_c

    .line 308
    aget-boolean p1, v0, p1

    return p1

    :cond_c
    const/4 p1, 0x1

    return p1
.end method

.method public f(I)Ljava/lang/Boolean;
    .registers 4

    .line 412
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/e;->sendRedirectHops:[Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    if-ltz p1, :cond_c

    array-length v1, v0

    if-ge p1, v1, :cond_c

    .line 413
    aget-object p1, v0, p1

    return-object p1

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public f()Ljava/lang/String;
    .registers 3

    .line 54
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/e;->htmlUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/cache/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/e;->htmlUuid:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/e;->width:I

    return v0
.end method

.method public i()[Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/e;->closingUrl:[Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/e;->height:I

    return v0
.end method

.method public k()[Z
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/e;->inAppBrowserEnabled:[Z

    return-object v0
.end method

.method public l()[Ljava/lang/String;
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/e;->trackingUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public m()[Ljava/lang/String;
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/e;->trackingClickUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .registers 2

    .line 335
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/e;->orientation:I

    return v0
.end method

.method public o()[Ljava/lang/String;
    .registers 2

    .line 349
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/e;->packageNames:[Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/Long;
    .registers 2

    .line 396
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/e;->delayImpressionInSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public q()[Ljava/lang/Boolean;
    .registers 2

    .line 408
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/e;->sendRedirectHops:[Ljava/lang/Boolean;

    return-object v0
.end method

.method public r()Z
    .registers 2

    .line 440
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/e;->isMraidAd:Z

    return v0
.end method
