.class final Lcom/appnext/core/AppnextActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/AppnextActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gm:Lcom/appnext/core/AppnextActivity;


# direct methods
.method constructor <init>(Lcom/appnext/core/AppnextActivity;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/appnext/core/AppnextActivity$1;->gm:Lcom/appnext/core/AppnextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity$1;->gm:Lcom/appnext/core/AppnextActivity;

    invoke-static {v0}, Lcom/appnext/core/f;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 52
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity$1;->gm:Lcom/appnext/core/AppnextActivity;

    invoke-virtual {v0}, Lcom/appnext/core/AppnextActivity;->finish()V

    .line 53
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity$1;->gm:Lcom/appnext/core/AppnextActivity;

    new-instance v1, Lcom/appnext/core/AppnextActivity$1$1;

    invoke-direct {v1, p0}, Lcom/appnext/core/AppnextActivity$1$1;-><init>(Lcom/appnext/core/AppnextActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/appnext/core/AppnextActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_17
    return-void
.end method
