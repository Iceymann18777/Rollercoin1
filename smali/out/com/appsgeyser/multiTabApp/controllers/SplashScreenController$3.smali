.class Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController$3;
.super Ljava/lang/Object;
.source "SplashScreenController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->showSplashScreen(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController$3;->this$0:Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController$3;->this$0:Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->access$000(Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController$3;->this$0:Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->access$100(Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
