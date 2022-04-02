.class Lcom/onesignal/ActivityLifecycleListener;
.super Ljava/lang/Object;
.source "ActivityLifecycleListener.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static configuration:Landroid/content/ComponentCallbacks;

.field private static instance:Lcom/onesignal/ActivityLifecycleListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static registerActivityLifecycleCallbacks(Landroid/app/Application;)V
    .registers 2

    .line 44
    sget-object v0, Lcom/onesignal/ActivityLifecycleListener;->instance:Lcom/onesignal/ActivityLifecycleListener;

    if-nez v0, :cond_e

    .line 45
    new-instance v0, Lcom/onesignal/ActivityLifecycleListener;

    invoke-direct {v0}, Lcom/onesignal/ActivityLifecycleListener;-><init>()V

    sput-object v0, Lcom/onesignal/ActivityLifecycleListener;->instance:Lcom/onesignal/ActivityLifecycleListener;

    .line 46
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 50
    :cond_e
    sget-object v0, Lcom/onesignal/ActivityLifecycleListener;->configuration:Landroid/content/ComponentCallbacks;

    if-nez v0, :cond_1c

    .line 51
    new-instance v0, Lcom/onesignal/ActivityLifecycleListener$1;

    invoke-direct {v0}, Lcom/onesignal/ActivityLifecycleListener$1;-><init>()V

    sput-object v0, Lcom/onesignal/ActivityLifecycleListener;->configuration:Landroid/content/ComponentCallbacks;

    .line 62
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_1c
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 68
    invoke-static {p1}, Lcom/onesignal/ActivityLifecycleHandler;->onActivityCreated(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 96
    invoke-static {p1}, Lcom/onesignal/ActivityLifecycleHandler;->onActivityDestroyed(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .line 83
    invoke-static {p1}, Lcom/onesignal/ActivityLifecycleHandler;->onActivityPaused(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    .line 78
    invoke-static {p1}, Lcom/onesignal/ActivityLifecycleHandler;->onActivityResumed(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 73
    invoke-static {p1}, Lcom/onesignal/ActivityLifecycleHandler;->onActivityStarted(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 88
    invoke-static {p1}, Lcom/onesignal/ActivityLifecycleHandler;->onActivityStopped(Landroid/app/Activity;)V

    return-void
.end method
