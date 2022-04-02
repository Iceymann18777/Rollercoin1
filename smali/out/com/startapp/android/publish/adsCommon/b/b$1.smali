.class Lcom/startapp/android/publish/adsCommon/b/b$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/b/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/adsCommon/b/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adsCommon/b/b;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/b/b$1;->a:Lcom/startapp/android/publish/adsCommon/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/b/b$1;->a:Lcom/startapp/android/publish/adsCommon/b/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b/b;->b()Ljava/lang/Boolean;

    return-void
.end method
