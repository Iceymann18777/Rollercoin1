.class public Lcom/startapp/android/publish/adsCommon/a;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private isActivityFullScreen:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/app/Activity;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/a;->isActivityFullScreen:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 24
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/a;->isActivityFullScreen:Z

    return v0
.end method
