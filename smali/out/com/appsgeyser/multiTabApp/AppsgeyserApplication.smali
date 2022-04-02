.class public Lcom/appsgeyser/multiTabApp/AppsgeyserApplication;
.super Landroidx/multidex/MultiDexApplication;
.source "AppsgeyserApplication.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    .line 8
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    .line 9
    invoke-static {p0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->setApplicationInstance(Landroid/app/Application;)V

    return-void
.end method
