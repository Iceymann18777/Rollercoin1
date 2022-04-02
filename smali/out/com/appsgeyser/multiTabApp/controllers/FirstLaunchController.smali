.class public Lcom/appsgeyser/multiTabApp/controllers/FirstLaunchController;
.super Ljava/lang/Object;
.source "FirstLaunchController.java"


# instance fields
.field private final preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.appsgeyser.multiTabApp.controllers.FirstLaunchController"

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/FirstLaunchController;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public isFirstLaunch()Z
    .registers 4

    .line 26
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/FirstLaunchController;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "com.appsgeyser.multiTabApp.controllers.FirstLaunchController.isFirstLaunch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public wasTheFirstLaunch()V
    .registers 4

    .line 30
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/FirstLaunchController;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.appsgeyser.multiTabApp.controllers.FirstLaunchController.isFirstLaunch"

    const/4 v2, 0x0

    .line 31
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
