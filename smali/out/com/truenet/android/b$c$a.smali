.class final Lcom/truenet/android/b$c$a;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truenet/android/b$c;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/truenet/android/b$c;


# direct methods
.method constructor <init>(Lcom/truenet/android/b$c;)V
    .registers 2

    iput-object p1, p0, Lcom/truenet/android/b$c$a;->a:Lcom/truenet/android/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/truenet/android/b$c$a;->a:Lcom/truenet/android/b$c;

    iget-object v0, v0, Lcom/truenet/android/b$c;->a:Lcom/truenet/android/b;

    invoke-static {v0}, Lcom/truenet/android/b;->a(Lcom/truenet/android/b;)Ljava/util/concurrent/SynchronousQueue;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/concurrent/SynchronousQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
