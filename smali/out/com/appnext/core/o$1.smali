.class final Lcom/appnext/core/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/core/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hC:Lcom/appnext/core/o;


# direct methods
.method constructor <init>(Lcom/appnext/core/o;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/appnext/core/o$1;->hC:Lcom/appnext/core/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 20
    iget-object p1, p0, Lcom/appnext/core/o$1;->hC:Lcom/appnext/core/o;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/appnext/core/o;->a(Lcom/appnext/core/o;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 25
    iget-object p1, p0, Lcom/appnext/core/o$1;->hC:Lcom/appnext/core/o;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/appnext/core/o;->a(Lcom/appnext/core/o;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
