.class Lcom/startapp/android/publish/common/metaData/c$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/common/metaData/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/common/metaData/c;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/common/metaData/c;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/startapp/android/publish/common/metaData/c$1;->a:Lcom/startapp/android/publish/common/metaData/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/c$1;->a:Lcom/startapp/android/publish/common/metaData/c;

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/c;->c()Ljava/lang/Boolean;

    move-result-object v0

    .line 51
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/startapp/android/publish/common/metaData/c$1$1;

    invoke-direct {v2, p0, v0}, Lcom/startapp/android/publish/common/metaData/c$1$1;-><init>(Lcom/startapp/android/publish/common/metaData/c$1;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
