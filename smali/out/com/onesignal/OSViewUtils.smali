.class Lcom/onesignal/OSViewUtils;
.super Ljava/lang/Object;
.source "OSViewUtils.java"


# static fields
.field private static final MARGIN_ERROR_PX_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x18

    .line 20
    invoke-static {v0}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/onesignal/OSViewUtils;->MARGIN_ERROR_PX_SIZE:I

    return-void
.end method

.method static decorViewReady(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 4

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decorViewReady:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    new-instance v1, Lcom/onesignal/OSViewUtils$1;

    invoke-direct {v1, v0, p1}, Lcom/onesignal/OSViewUtils$1;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static dpToPx(I)I
    .registers 2

    int-to-float p0, p0

    .line 120
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private static getDisplaySizeY(Landroid/app/Activity;)I
    .registers 2

    .line 114
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 116
    iget p0, v0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method static getWindowHeight(Landroid/app/Activity;)I
    .registers 3

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 83
    invoke-static {p0}, Lcom/onesignal/OSViewUtils;->getWindowHeightAPI23Plus(Landroid/app/Activity;)I

    move-result p0

    return p0

    .line 84
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_16

    .line 85
    invoke-static {p0}, Lcom/onesignal/OSViewUtils;->getWindowHeightLollipop(Landroid/app/Activity;)I

    move-result p0

    return p0

    .line 87
    :cond_16
    invoke-static {p0}, Lcom/onesignal/OSViewUtils;->getDisplaySizeY(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method private static getWindowHeightAPI23Plus(Landroid/app/Activity;)I
    .registers 3

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_13

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    .line 99
    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    .line 100
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    sub-int/2addr p0, v1

    .line 101
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    sub-int/2addr p0, v0

    return p0
.end method

.method private static getWindowHeightLollipop(Landroid/app/Activity;)I
    .registers 3

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 107
    invoke-static {p0}, Lcom/onesignal/OSViewUtils;->getWindowVisibleDisplayFrame(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0

    .line 110
    :cond_16
    invoke-static {p0}, Lcom/onesignal/OSViewUtils;->getDisplaySizeY(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method private static getWindowVisibleDisplayFrame(Landroid/app/Activity;)Landroid/graphics/Rect;
    .registers 2

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method static getWindowWidth(Landroid/app/Activity;)I
    .registers 1

    .line 76
    invoke-static {p0}, Lcom/onesignal/OSViewUtils;->getWindowVisibleDisplayFrame(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method static isActivityFullyReady(Landroid/app/Activity;)Z
    .registers 6

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 128
    :goto_13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1a

    return v0

    .line 131
    :cond_1a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    if-eqz v0, :cond_30

    if-eqz p0, :cond_30

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    return v1
.end method

.method static isKeyboardUp(Ljava/lang/ref/WeakReference;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    .line 27
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 28
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 33
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 35
    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 36
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    const/4 p0, 0x0

    if-eqz v2, :cond_3b

    .line 40
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 41
    sget v1, Lcom/onesignal/OSViewUtils;->MARGIN_ERROR_PX_SIZE:I

    if-le v0, v1, :cond_3b

    const/4 p0, 0x1

    :cond_3b
    return p0
.end method
