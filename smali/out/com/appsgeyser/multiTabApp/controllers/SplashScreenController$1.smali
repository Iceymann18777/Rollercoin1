.class Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController$1;
.super Ljava/lang/Object;
.source "SplashScreenController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;
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

    .line 28
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController$1;->this$0:Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController$1;->this$0:Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;

    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->access$000(Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->showSplashScreen()V

    return-void
.end method
