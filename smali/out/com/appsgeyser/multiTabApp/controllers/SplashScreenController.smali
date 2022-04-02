.class public Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;
.super Ljava/lang/Object;
.source "SplashScreenController.java"


# instance fields
.field private _activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field private _handler:Landroid/os/Handler;

.field private _splashScreenView:Landroid/view/ViewGroup;

.field private hideSplashScreenViewRunnable:Ljava/lang/Runnable;

.field private showSplashScreenViewRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->_handler:Landroid/os/Handler;

    .line 28
    new-instance v0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController$1;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController$1;-><init>(Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->showSplashScreenViewRunnable:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController$2;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController$2;-><init>(Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->hideSplashScreenViewRunnable:Ljava/lang/Runnable;

    .line 24
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->_splashScreenView:Landroid/view/ViewGroup;

    .line 25
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->_activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->_activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;)Ljava/lang/Runnable;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->hideSplashScreenViewRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public showSplashScreen(Ljava/lang/String;)V
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->_splashScreenView:Landroid/view/ViewGroup;

    const v1, 0x7f0a01d4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 45
    :try_start_b
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->_activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 46
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->_activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 48
    invoke-static {p1, v1}, Lcom/appsgeyser/multiTabApp/utils/ImageReader;->decodeFile(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->_activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->showSplashScreenViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 51
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->_handler:Landroid/os/Handler;

    new-instance v0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController$3;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController$3;-><init>(Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_3d} :catch_3e

    goto :goto_47

    :catch_3e
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 59
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->_activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->showContentView()V

    :goto_47
    return-void
.end method
