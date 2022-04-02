.class public Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;
.super Lcom/startapp/android/publish/ads/banner/BannerBase;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/ads/banner/BannerInterface;
.implements Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Banner3D"

.field private static final TIMEOUT_RESTORE:I = 0xc8


# instance fields
.field protected adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

.field protected addedDisplayEvent:Z

.field protected ads:Lcom/startapp/android/publish/ads/banner/banner3d/a;

.field protected adsItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected animation:Z

.field protected attachedToWindow:Z

.field protected camera:Landroid/graphics/Camera;

.field protected currentBannerIndex:I

.field protected defaultLoad:Z

.field protected faces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;",
            ">;"
        }
    .end annotation
.end field

.field protected firstRotation:Z

.field protected firstRotationFinished:Z

.field protected listener:Lcom/startapp/android/publish/ads/banner/BannerListener;

.field protected loaded:Z

.field protected loading:Z

.field private mAutoRotation:Ljava/lang/Runnable;

.field protected matrix:Landroid/graphics/Matrix;

.field protected options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

.field protected overrides:Lcom/startapp/android/publish/adsCommon/adinformation/c;

.field protected paint:Landroid/graphics/Paint;

.field protected rotating:Z

.field protected rotation:F

.field protected rotationEnabled:Z

.field protected startY:F

.field protected touchDown:Z

.field protected visible:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V
    .registers 3

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/startapp/android/publish/ads/banner/BannerListener;)V
    .registers 3

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 3

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V
    .registers 4

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 3

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZLcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 4

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/common/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0, p1, v0, v1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/common/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 222
    invoke-direct {p0, p1, p2, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/android/publish/ads/banner/BannerBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 65
    iput-object p2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    .line 66
    iput-object p2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    .line 67
    iput-object p2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    const/high16 p2, 0x42340000    # 45.0f

    .line 69
    iput p2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    const/4 p2, 0x0

    .line 70
    iput p2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->startY:F

    const/4 p2, 0x1

    .line 71
    iput-boolean p2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotationEnabled:Z

    const/4 p3, 0x0

    .line 72
    iput-boolean p3, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotating:Z

    .line 73
    iput-boolean p2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotation:Z

    .line 74
    iput-boolean p3, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotationFinished:Z

    .line 75
    iput-boolean p3, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->addedDisplayEvent:Z

    .line 77
    iput-boolean p3, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->touchDown:Z

    .line 78
    iput-boolean p3, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->animation:Z

    .line 80
    iput-boolean p2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->visible:Z

    .line 81
    iput-boolean p2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->defaultLoad:Z

    .line 84
    iput-boolean p3, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loaded:Z

    .line 85
    iput-boolean p3, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loading:Z

    .line 86
    iput-boolean p3, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->attachedToWindow:Z

    .line 90
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    .line 91
    iput p3, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->currentBannerIndex:I

    .line 99
    new-instance p2, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;

    invoke-direct {p2, p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;-><init>(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;)V

    iput-object p2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    .line 230
    :try_start_3b
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->init()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_4d

    :catch_3f
    move-exception p2

    .line 232
    sget-object p3, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Banner.init - unexpected error occurd"

    const-string v1, ""

    invoke-static {p1, p3, v0, p2, v1}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/ads/banner/BannerListener;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 187
    invoke-direct {p0, p1, v0, v1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/common/model/AdPreferences;)V

    .line 188
    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setBannerListener(Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 182
    invoke-direct {p0, p1, v0, p2}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/common/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 193
    invoke-direct {p0, p1, v0, p2}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/common/model/AdPreferences;)V

    .line 194
    invoke-virtual {p0, p3}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setBannerListener(Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, p2, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/common/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/banner/BannerBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    .line 66
    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    .line 67
    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x42340000    # 45.0f

    .line 69
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->startY:F

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotationEnabled:Z

    const/4 v1, 0x0

    .line 72
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotating:Z

    .line 73
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotation:Z

    .line 74
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotationFinished:Z

    .line 75
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->addedDisplayEvent:Z

    .line 77
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->touchDown:Z

    .line 78
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->animation:Z

    .line 80
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->visible:Z

    .line 81
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->defaultLoad:Z

    .line 84
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loaded:Z

    .line 85
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loading:Z

    .line 86
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->attachedToWindow:Z

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    .line 91
    iput v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->currentBannerIndex:I

    .line 99
    new-instance v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;-><init>(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;)V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    .line 208
    :try_start_3b
    iput-boolean p2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->defaultLoad:Z

    if-nez p3, :cond_47

    .line 210
    new-instance p2, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {p2}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    iput-object p2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    goto :goto_49

    .line 212
    :cond_47
    iput-object p3, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 214
    :goto_49
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->init()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4c} :catch_4d

    goto :goto_5b

    :catch_4d
    move-exception p2

    .line 216
    sget-object p3, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Banner.init - unexpected error occurd"

    const-string v1, ""

    invoke-static {p1, p3, v0, p2, v1}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5b
    return-void
.end method

.method static synthetic access$000(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;)Z
    .registers 1

    .line 53
    iget-boolean p0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->drawn:Z

    return p0
.end method

.method static synthetic access$100(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->makeImpression(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;)V

    return-void
.end method

.method static synthetic access$200(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;)V
    .registers 1

    .line 53
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->addDisplayEventOnLoad()V

    return-void
.end method

.method static synthetic access$300(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setHardwareAcceleration(Lcom/startapp/android/publish/common/model/AdPreferences;)V

    return-void
.end method

.method static synthetic access$400(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;)V
    .registers 1

    .line 53
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loadBanner()V

    return-void
.end method

.method private addAdInformationLayout()V
    .registers 7

    .line 251
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 252
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getFaceWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getFaceHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 253
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 254
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getFaceStartLeft()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 255
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getFaceStartTop()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 256
    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    new-instance v1, Lcom/startapp/android/publish/adsCommon/adinformation/b;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/startapp/android/publish/adsCommon/adinformation/b$b;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b$b;

    sget-object v4, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    iget-object v5, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->overrides:Lcom/startapp/android/publish/adsCommon/adinformation/c;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/startapp/android/publish/adsCommon/adinformation/b;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/adinformation/b$b;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/adsCommon/adinformation/c;)V

    .line 259
    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/adsCommon/adinformation/b;->a(Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method private cleanFaces()V
    .registers 3

    .line 663
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 664
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    if-eqz v1, :cond_10

    .line 666
    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;->e()V

    goto :goto_10

    :cond_22
    return-void
.end method

.method private createFaces(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;)V"
        }
    .end annotation

    .line 438
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->cleanFaces()V

    .line 439
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->removeAllViews()V

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    .line 441
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/startapp/android/publish/common/model/AdDetails;

    .line 442
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    new-instance v7, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getBannerOptions()Lcom/startapp/android/publish/ads/banner/BannerOptions;

    move-result-object v5

    new-instance v6, Lcom/startapp/android/publish/adsCommon/d/b;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getAdTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/startapp/android/publish/common/model/AdDetails;Lcom/startapp/android/publish/ads/banner/BannerOptions;Lcom/startapp/android/publish/adsCommon/d/b;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_3c
    const/4 p1, 0x0

    .line 445
    iput p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->currentBannerIndex:I

    return-void
.end method

.method private dispatchOnDetatchedFromWindow()V
    .registers 3

    .line 823
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 824
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    .line 825
    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;->c()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method private drawFace(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V
    .registers 12

    .line 577
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    if-nez v0, :cond_b

    .line 578
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    .line 582
    :cond_b
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 585
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    int-to-float v1, p6

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 586
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    invoke-virtual {v0, p8}, Landroid/graphics/Camera;->rotateX(F)V

    .line 587
    iget-object p8, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    neg-int v0, p6

    int-to-float v0, v0

    invoke-virtual {p8, v2, v2, v0}, Landroid/graphics/Camera;->translate(FFF)V

    .line 590
    iget-object p8, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    if-nez p8, :cond_2e

    .line 591
    new-instance p8, Landroid/graphics/Matrix;

    invoke-direct {p8}, Landroid/graphics/Matrix;-><init>()V

    iput-object p8, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    .line 595
    :cond_2e
    iget-object p8, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p8, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 596
    iget-object p8, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->camera:Landroid/graphics/Camera;

    invoke-virtual {p8}, Landroid/graphics/Camera;->restore()V

    .line 599
    iget-object p8, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    neg-int v1, p5

    int-to-float v1, v1

    invoke-virtual {p8, v1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 600
    iget-object p8, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p8, p7, p7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 601
    iget-object p7, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    add-int/2addr p4, p5

    int-to-float p4, p4

    add-int/2addr p3, p6

    int-to-float p3, p3

    invoke-virtual {p7, p4, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 606
    iget-object p3, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->matrix:Landroid/graphics/Matrix;

    iget-object p4, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawFrame(Landroid/graphics/Canvas;)V
    .registers 20

    move-object/from16 v9, p0

    .line 508
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getFaceWidth()I

    move-result v10

    .line 509
    invoke-direct/range {p0 .. p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getFaceHeight()I

    move-result v11

    .line 510
    invoke-direct/range {p0 .. p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getFaceStartLeft()I

    move-result v12

    .line 511
    invoke-direct/range {p0 .. p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getFaceStartTop()I

    move-result v13

    .line 513
    iget-object v0, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->l()F

    move-result v0

    iget v1, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    const/high16 v2, 0x42340000    # 45.0f

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v2

    float-to-double v3, v1

    iget-object v1, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->m()I

    move-result v1

    int-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->l()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    .line 514
    iget-boolean v1, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotationFinished:Z

    if-nez v1, :cond_45

    .line 515
    iget-object v0, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->l()F

    move-result v0

    :cond_45
    move v14, v0

    .line 518
    invoke-direct/range {p0 .. p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getPreviousBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 519
    invoke-direct/range {p0 .. p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    if-eqz v16, :cond_f9

    if-eqz v15, :cond_f9

    .line 522
    iget v0, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    const/high16 v17, 0x42b40000    # 90.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_a2

    .line 523
    iget v0, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_83

    .line 524
    div-int/lit8 v5, v10, 0x2

    div-int/lit8 v6, v11, 0x2

    iget v0, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    sub-float v0, v0, v17

    iget-object v1, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->n()Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->getRotationMultiplier()I

    move-result v1

    int-to-float v1, v1

    mul-float v8, v0, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move v3, v13

    move v4, v12

    move v7, v14

    invoke-direct/range {v0 .. v8}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->drawFace(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V

    .line 526
    :cond_83
    div-int/lit8 v5, v10, 0x2

    div-int/lit8 v6, v11, 0x2

    iget v0, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    iget-object v1, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->n()Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->getRotationMultiplier()I

    move-result v1

    int-to-float v1, v1

    mul-float v8, v0, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move v3, v13

    move v4, v12

    move v7, v14

    invoke-direct/range {v0 .. v8}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->drawFace(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V

    goto :goto_f9

    .line 528
    :cond_a2
    iget v0, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    const/high16 v1, 0x42ae0000    # 87.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c8

    .line 529
    div-int/lit8 v5, v10, 0x2

    div-int/lit8 v6, v11, 0x2

    iget v0, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    iget-object v1, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->n()Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->getRotationMultiplier()I

    move-result v1

    int-to-float v1, v1

    mul-float v8, v0, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move v3, v13

    move v4, v12

    move v7, v14

    invoke-direct/range {v0 .. v8}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->drawFace(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V

    .line 533
    :cond_c8
    div-int/lit8 v5, v10, 0x2

    div-int/lit8 v6, v11, 0x2

    iget v0, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    sub-float v0, v0, v17

    iget-object v1, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->n()Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/BannerOptions$Effect;->getRotationMultiplier()I

    move-result v1

    int-to-float v1, v1

    mul-float v8, v0, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move v3, v13

    move v4, v12

    move v7, v14

    invoke-direct/range {v0 .. v8}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->drawFace(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V

    .line 534
    iget-boolean v0, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotation:Z

    if-nez v0, :cond_f9

    const/4 v0, 0x1

    .line 535
    iput-boolean v0, v9, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotationFinished:Z
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f0} :catch_f1

    goto :goto_f9

    :catch_f1
    const/4 v0, 0x6

    const-string v1, "Banner3D"

    const-string v2, "Exception onDraw Banner3D"

    .line 540
    invoke-static {v1, v0, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_f9
    :goto_f9
    return-void
.end method

.method private getCurrentBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 457
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getCurrentBannerIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getFaceHeight()I
    .registers 3

    .line 553
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->e()I

    move-result v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->k()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getFaceStartLeft()I
    .registers 3

    .line 549
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getFaceWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getFaceStartTop()I
    .registers 3

    .line 545
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getFaceHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getFaceWidth()I
    .registers 3

    .line 557
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->j()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getPreviousBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 461
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getCurrentBannerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 462
    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getTotalBaners()I
    .registers 2

    .line 474
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private initFaces(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;)V"
        }
    .end annotation

    .line 420
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->shouldCreateFaces()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 421
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->createFaces(Ljava/util/List;)V

    goto :goto_d

    .line 423
    :cond_a
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->initFacesViews()V

    :goto_d
    return-void
.end method

.method private initFacesViews()V
    .registers 5

    .line 428
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    .line 429
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getBannerOptions()Lcom/startapp/android/publish/ads/banner/BannerOptions;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;->a(Landroid/content/Context;Lcom/startapp/android/publish/ads/banner/BannerOptions;Landroid/view/ViewGroup;)V

    goto :goto_6

    :cond_1e
    return-void
.end method

.method private isEventInsideBanner(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 673
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getFaceWidth()I

    move-result v0

    .line 674
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getFaceHeight()I

    move-result v1

    .line 675
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getFaceStartLeft()I

    move-result v2

    .line 676
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getFaceStartTop()I

    move-result v3

    .line 678
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v5, v2

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_38

    .line 679
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_38

    .line 680
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-int/2addr v2, v0

    int-to-float v0, v2

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_38

    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-int/2addr v3, v1

    int-to-float v0, v3

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_38

    const/4 p1, 0x1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    return p1
.end method

.method private makeImpression(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;)V
    .registers 5

    .line 412
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;->a(Landroid/content/Context;)Lcom/startapp/android/publish/adsCommon/i;

    move-result-object p1

    if-eqz p1, :cond_15

    const/4 v0, 0x3

    const-string v1, "Banner3D"

    const-string v2, "Banner3D Scheduling visibility check"

    .line 414
    invoke-static {v1, v0, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 415
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->startVisibilityRunnable(Lcom/startapp/android/publish/adsCommon/i;)V

    :cond_15
    return-void
.end method

.method private nextBanner()V
    .registers 3

    .line 478
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->currentBannerIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getTotalBaners()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->currentBannerIndex:I

    return-void
.end method

.method private prevBanner()V
    .registers 3

    .line 482
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->currentBannerIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getTotalBaners()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getTotalBaners()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->currentBannerIndex:I

    return-void
.end method

.method private setBannerSize(Lcom/startapp/android/publish/ads/banner/d;)Z
    .registers 5

    .line 453
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getBannerOptions()Lcom/startapp/android/publish/ads/banner/BannerOptions;

    move-result-object v2

    invoke-static {v0, v1, v2, p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DSize;->a(Landroid/content/Context;Landroid/view/ViewParent;Lcom/startapp/android/publish/ads/banner/BannerOptions;Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;Lcom/startapp/android/publish/ads/banner/d;)Z

    move-result p1

    return p1
.end method

.method private shouldCreateFaces()Z
    .registers 2

    .line 434
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private startRotation()V
    .registers 2

    .line 793
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->attachedToWindow:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->drawn:Z

    if-eqz v0, :cond_12

    .line 794
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 795
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method


# virtual methods
.method protected getBannerId()I
    .registers 2

    .line 1056
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->innerBanner3dId:I

    return v0
.end method

.method protected getBannerName()Ljava/lang/String;
    .registers 2

    const-string v0, "StartApp Banner3D"

    return-object v0
.end method

.method protected getBannerOptions()Lcom/startapp/android/publish/ads/banner/BannerOptions;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    return-object v0
.end method

.method protected getCurrentBannerIndex()I
    .registers 2

    .line 466
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->currentBannerIndex:I

    return v0
.end method

.method protected getHeightInDp()I
    .registers 2

    const/16 v0, 0x32

    return v0
.end method

.method protected getNextBannerIndex()I
    .registers 3

    .line 470
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->currentBannerIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getTotalBaners()I

    move-result v1

    rem-int/2addr v0, v1

    return v0
.end method

.method protected getOffset()I
    .registers 2

    .line 1048
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->ads:Lcom/startapp/android/publish/ads/banner/banner3d/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 1051
    :cond_6
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/banner3d/a;->a()I

    move-result v0

    return v0
.end method

.method protected getRefreshRate()I
    .registers 2

    .line 1042
    invoke-static {}, Lcom/startapp/android/publish/ads/banner/c;->a()Lcom/startapp/android/publish/ads/banner/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/c;->b()Lcom/startapp/android/publish/ads/banner/BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->h()I

    move-result v0

    return v0
.end method

.method protected getWidthInDp()I
    .registers 2

    const/16 v0, 0x12c

    return v0
.end method

.method public hideBanner()V
    .registers 2

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->visible:Z

    const/16 v0, 0x8

    .line 238
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setVisibility(I)V

    return-void
.end method

.method protected initRuntime()V
    .registers 5

    .line 266
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loading:Z

    if-nez v0, :cond_54

    .line 268
    invoke-static {}, Lcom/startapp/android/publish/ads/banner/c;->a()Lcom/startapp/android/publish/ads/banner/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/c;->c()Lcom/startapp/android/publish/ads/banner/BannerOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->adsItems:Ljava/util/List;

    .line 271
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    if-nez v0, :cond_20

    .line 272
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 274
    :cond_20
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/adinformation/c;->a()Lcom/startapp/android/publish/adsCommon/adinformation/c;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->overrides:Lcom/startapp/android/publish/adsCommon/adinformation/c;

    .line 275
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->cleanFaces()V

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loading:Z

    const/4 v0, 0x0

    .line 279
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setBackgroundColor(I)V

    .line 280
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_45

    .line 281
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getBannerId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setId(I)V

    .line 285
    :cond_45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$2;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$2;-><init>(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_54
    return-void
.end method

.method protected loadBanners(Ljava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;Z)V"
        }
    .end annotation

    .line 340
    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->adsItems:Ljava/util/List;

    if-eqz p1, :cond_fa

    .line 343
    new-instance v0, Lcom/startapp/android/publish/ads/banner/d;

    invoke-direct {v0}, Lcom/startapp/android/publish/ads/banner/d;-><init>()V

    .line 345
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setBannerSize(Lcom/startapp/android/publish/ads/banner/d;)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 347
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->d()I

    move-result v2

    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setMinimumWidth(I)V

    .line 348
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->e()I

    move-result v2

    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setMinimumHeight(I)V

    .line 350
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4f

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v2, :cond_4f

    .line 351
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/d;->a()I

    move-result v3

    invoke-static {v1, v3}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setMinimumWidth(I)V

    .line 354
    :cond_4f
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_6c

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_6c

    .line 355
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/d;->b()I

    move-result v0

    invoke-static {v1, v0}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setMinimumHeight(I)V

    .line 358
    :cond_6c
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_aa

    .line 359
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_84

    .line 360
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setMinimumWidth(I)V

    .line 362
    :cond_84
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_95

    .line 363
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setMinimumHeight(I)V

    .line 365
    :cond_95
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_aa

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_aa

    .line 366
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->ads:Lcom/startapp/android/publish/ads/banner/banner3d/a;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/banner/banner3d/a;->a(Z)V

    .line 370
    :cond_aa
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->initFaces(Ljava/util/List;)V

    .line 372
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->addAdInformationLayout()V

    .line 375
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    if-nez p1, :cond_c3

    .line 376
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    .line 377
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 378
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 382
    :cond_c3
    iget-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->animation:Z

    if-nez p1, :cond_cc

    .line 383
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->animation:Z

    .line 384
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->startRotation()V

    .line 388
    :cond_cc
    iget-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->visible:Z

    if-eqz p1, :cond_d4

    const/4 p1, 0x0

    .line 389
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setVisibility(I)V

    .line 392
    :cond_d4
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->listener:Lcom/startapp/android/publish/ads/banner/BannerListener;

    if-eqz p1, :cond_108

    if-eqz p2, :cond_108

    .line 393
    invoke-interface {p1, p0}, Lcom/startapp/android/publish/ads/banner/BannerListener;->onReceiveAd(Landroid/view/View;)V

    goto :goto_108

    :cond_de
    const/4 p1, 0x6

    const-string v0, "Banner3D"

    const-string v1, "Banner3DError in banner screen size"

    .line 396
    invoke-static {v0, p1, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "Error in banner screen size"

    .line 397
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setErrorMessage(Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 398
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setVisibility(I)V

    .line 399
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->listener:Lcom/startapp/android/publish/ads/banner/BannerListener;

    if-eqz p1, :cond_108

    if-eqz p2, :cond_108

    .line 400
    invoke-interface {p1, p0}, Lcom/startapp/android/publish/ads/banner/BannerListener;->onFailedToReceiveAd(Landroid/view/View;)V

    goto :goto_108

    :cond_fa
    const-string p1, "No ads to load"

    .line 404
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setErrorMessage(Ljava/lang/String;)V

    .line 405
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->listener:Lcom/startapp/android/publish/ads/banner/BannerListener;

    if-eqz p1, :cond_108

    if-eqz p2, :cond_108

    .line 406
    invoke-interface {p1, p0}, Lcom/startapp/android/publish/ads/banner/BannerListener;->onFailedToReceiveAd(Landroid/view/View;)V

    :cond_108
    :goto_108
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 801
    invoke-super {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 802
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->attachedToWindow:Z

    .line 803
    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->o()Z

    move-result v1

    if-nez v1, :cond_15

    :cond_10
    const/4 v1, 0x0

    .line 804
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotation:Z

    .line 805
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotationFinished:Z

    .line 807
    :cond_15
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->startRotation()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 814
    invoke-super {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 815
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->attachedToWindow:Z

    .line 816
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 818
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->dispatchOnDetatchedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 491
    invoke-super {p0, p1}, Lcom/startapp/android/publish/ads/banner/BannerBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 493
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->drawn:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loading:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 494
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->drawn:Z

    .line 495
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->startRotation()V

    .line 498
    :cond_11
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->visible:Z

    if-eqz v0, :cond_24

    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->shouldCreateFaces()Z

    move-result v0

    if-nez v0, :cond_24

    .line 499
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->drawFrame(Landroid/graphics/Canvas;)V

    :cond_24
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 2

    .line 716
    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/Ad;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setErrorMessage(Ljava/lang/String;)V

    .line 717
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->listener:Lcom/startapp/android/publish/ads/banner/BannerListener;

    if-eqz p1, :cond_e

    .line 718
    invoke-interface {p1, p0}, Lcom/startapp/android/publish/ads/banner/BannerListener;->onFailedToReceiveAd(Landroid/view/View;)V

    :cond_e
    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 4

    const/4 v0, 0x1

    .line 707
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loaded:Z

    const/4 v1, 0x0

    .line 708
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loading:Z

    .line 709
    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->ads:Lcom/startapp/android/publish/ads/banner/banner3d/a;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/banner3d/a;->getAdInfoOverride()Lcom/startapp/android/publish/adsCommon/adinformation/c;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->overrides:Lcom/startapp/android/publish/adsCommon/adinformation/c;

    .line 711
    check-cast p1, Lcom/startapp/android/publish/adsCommon/h;

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/h;->d()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loadBanners(Ljava/util/List;Z)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6

    .line 748
    instance-of v0, p1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;

    if-nez v0, :cond_8

    .line 749
    invoke-super {p0, p1}, Lcom/startapp/android/publish/ads/banner/BannerBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 752
    :cond_8
    check-cast p1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;

    .line 753
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 754
    iget-boolean v0, p1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->bIsVisible:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->visible:Z

    if-eqz v0, :cond_7c

    .line 756
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->getDetails()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->adsItems:Ljava/util/List;

    .line 757
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->getRotation()F

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    .line 758
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->isFirstRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotation:Z

    .line 759
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->isFirstRotationFinished()Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotationFinished:Z

    .line 760
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->getCurrentImage()I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->currentBannerIndex:I

    .line 762
    iget-object v0, p1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    .line 763
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->cleanFaces()V

    .line 764
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    if-eqz v0, :cond_51

    const/4 v1, 0x0

    .line 766
    :goto_44
    array-length v2, v0

    if-ge v1, v2, :cond_51

    .line 767
    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 770
    :cond_51
    iget-boolean v0, p1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->loaded:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loaded:Z

    .line 771
    iget-boolean v0, p1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->loading:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loading:Z

    .line 772
    iget-boolean v0, p1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->bDefaultLoad:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->defaultLoad:Z

    .line 774
    iget-object v0, p1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->overrides:Lcom/startapp/android/publish/adsCommon/adinformation/c;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->overrides:Lcom/startapp/android/publish/adsCommon/adinformation/c;

    .line 776
    iget-object p1, p1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    .line 778
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->adsItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_74

    const/4 p1, 0x1

    .line 779
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->defaultLoad:Z

    .line 780
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->init()V

    goto :goto_7c

    .line 782
    :cond_74
    new-instance p1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$4;

    invoke-direct {p1, p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$4;-><init>(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;)V

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->post(Ljava/lang/Runnable;)Z

    :cond_7c
    :goto_7c
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .line 726
    invoke-super {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 727
    new-instance v1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 728
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->visible:Z

    iput-boolean v0, v1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->bIsVisible:Z

    .line 729
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->adsItems:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->setDetails(Ljava/util/List;)V

    .line 730
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->setRotation(F)V

    .line 731
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotation:Z

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->setFirstRotation(Z)V

    .line 732
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotationFinished:Z

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->setFirstRotationFinished(Z)V

    .line 733
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->currentBannerIndex:I

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->setCurrentImage(I)V

    .line 734
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    iput-object v0, v1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    .line 735
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    iput-object v0, v1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    .line 736
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loaded:Z

    iput-boolean v0, v1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->loaded:Z

    .line 737
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loading:Z

    iput-boolean v0, v1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->loading:Z

    .line 738
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->overrides:Lcom/startapp/android/publish/adsCommon/adinformation/c;

    iput-object v0, v1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->overrides:Lcom/startapp/android/publish/adsCommon/adinformation/c;

    const/4 v0, 0x0

    .line 739
    :goto_41
    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_58

    .line 740
    iget-object v2, v1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    iget-object v3, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_58
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 615
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->isEventInsideBanner(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    if-eqz v0, :cond_81

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_81

    .line 618
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_78

    if-eq v0, v2, :cond_37

    const/4 v3, 0x2

    if-eq v0, v3, :cond_20

    goto :goto_80

    .line 624
    :cond_20
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->startY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2e

    goto :goto_80

    .line 627
    :cond_2e
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->touchDown:Z

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->startY:F

    goto :goto_80

    .line 633
    :cond_37
    iget-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->touchDown:Z

    if-eqz p1, :cond_80

    .line 634
    iget p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    const/high16 v0, 0x42340000    # 45.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_46

    .line 635
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->prevBanner()V

    .line 638
    :cond_46
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->touchDown:Z

    .line 639
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotationEnabled:Z

    .line 641
    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setClicked(Z)V

    .line 643
    new-instance p1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$3;

    invoke-direct {p1, p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$3;-><init>(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;)V

    .line 648
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->A()J

    move-result-wide v0

    .line 643
    invoke-virtual {p0, p1, v0, v1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 650
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getCurrentBannerIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;->b(Landroid/content/Context;)V

    .line 651
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->listener:Lcom/startapp/android/publish/ads/banner/BannerListener;

    if-eqz p1, :cond_80

    .line 652
    invoke-interface {p1, p0}, Lcom/startapp/android/publish/ads/banner/BannerListener;->onClick(Landroid/view/View;)V

    goto :goto_80

    .line 620
    :cond_78
    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->touchDown:Z

    .line 621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->startY:F

    :cond_80
    :goto_80
    return v2

    :cond_81
    :goto_81
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    .line 838
    invoke-super {p0, p1}, Lcom/startapp/android/publish/ads/banner/BannerBase;->onWindowFocusChanged(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    .line 840
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->attachedToWindow:Z

    .line 841
    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->o()Z

    move-result v1

    if-nez v1, :cond_17

    .line 842
    :cond_13
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotation:Z

    .line 843
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotationFinished:Z

    .line 845
    :cond_17
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->startRotation()V

    goto :goto_26

    .line 847
    :cond_1b
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->attachedToWindow:Z

    .line 848
    iget-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotating:Z

    if-nez p1, :cond_26

    .line 849
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->mAutoRotation:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_26
    :goto_26
    return-void
.end method

.method protected reload()V
    .registers 4

    const/4 v0, 0x0

    .line 314
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loaded:Z

    const/4 v1, 0x1

    .line 315
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loading:Z

    .line 316
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->animation:Z

    .line 317
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotationEnabled:Z

    .line 318
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotation:Z

    .line 319
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->firstRotationFinished:Z

    .line 320
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->addedDisplayEvent:Z

    .line 321
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->drawn:Z

    const/4 v0, 0x0

    .line 322
    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->adRulesResult:Lcom/startapp/android/publish/adsCommon/a/f;

    .line 323
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->cleanFaces()V

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->faces:Ljava/util/List;

    .line 327
    new-instance v0, Lcom/startapp/android/publish/ads/banner/banner3d/a;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->getOffset()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/ads/banner/banner3d/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->ads:Lcom/startapp/android/publish/ads/banner/banner3d/a;

    .line 328
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    if-nez v0, :cond_39

    .line 329
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 331
    :cond_39
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->ads:Lcom/startapp/android/publish/ads/banner/banner3d/a;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-virtual {v0, v1, p0}, Lcom/startapp/android/publish/ads/banner/banner3d/a;->load(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Z

    return-void
.end method

.method protected rotate(F)V
    .registers 4

    .line 690
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    const/high16 p1, 0x42b40000    # 90.0f

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_13

    .line 693
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->nextBanner()V

    .line 694
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    .line 697
    :cond_13
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_22

    .line 698
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->prevBanner()V

    .line 699
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->rotation:F

    .line 702
    :cond_22
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->invalidate()V

    return-void
.end method

.method public setAdTag(Ljava/lang/String;)V
    .registers 2

    .line 1066
    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->adTag:Ljava/lang/String;

    return-void
.end method

.method protected setBannerId(I)V
    .registers 2

    .line 1061
    iput p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->innerBanner3dId:I

    return-void
.end method

.method public setBannerListener(Lcom/startapp/android/publish/ads/banner/BannerListener;)V
    .registers 2

    .line 1037
    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->listener:Lcom/startapp/android/publish/ads/banner/BannerListener;

    return-void
.end method

.method public showBanner()V
    .registers 2

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->visible:Z

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->setVisibility(I)V

    return-void
.end method
