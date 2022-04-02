.class final Lcom/onesignal/ActivityLifecycleListener$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleListener.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/ActivityLifecycleListener;->registerActivityLifecycleCallbacks(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 54
    invoke-static {p1}, Lcom/onesignal/ActivityLifecycleHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method
