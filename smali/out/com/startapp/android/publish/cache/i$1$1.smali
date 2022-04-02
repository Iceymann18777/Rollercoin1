.class Lcom/startapp/android/publish/cache/i$1$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/cache/i$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/cache/i$1;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/cache/i$1;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/startapp/android/publish/cache/i$1$1;->a:Lcom/startapp/android/publish/cache/i$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/startapp/android/publish/cache/i$1$1;->a:Lcom/startapp/android/publish/cache/i$1;

    iget-object v0, v0, Lcom/startapp/android/publish/cache/i$1;->b:Lcom/startapp/android/publish/cache/i$e;

    invoke-interface {v0}, Lcom/startapp/android/publish/cache/i$e;->a()V

    return-void
.end method
