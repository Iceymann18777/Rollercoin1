.class final Lcom/appnext/core/d$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/d$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ga:Lcom/appnext/core/d$2;


# direct methods
.method constructor <init>(Lcom/appnext/core/d$2;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/appnext/core/d$2$1;->ga:Lcom/appnext/core/d$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/d$2$1;->ga:Lcom/appnext/core/d$2;

    iget-object v0, v0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iget-object v1, p0, Lcom/appnext/core/d$2$1;->ga:Lcom/appnext/core/d$2;

    iget-object v1, v1, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v0, v1}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/core/d$2$1;->ga:Lcom/appnext/core/d$2;

    iget-object v1, v1, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iget-object v2, p0, Lcom/appnext/core/d$2$1;->ga:Lcom/appnext/core/d$2;

    iget-object v2, v2, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v2}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/core/a;->e(Ljava/util/ArrayList;)V

    .line 251
    iget-object v0, p0, Lcom/appnext/core/d$2$1;->ga:Lcom/appnext/core/d$2;

    iget-object v0, v0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iget-object v1, p0, Lcom/appnext/core/d$2$1;->ga:Lcom/appnext/core/d$2;

    iget-object v1, v1, Lcom/appnext/core/d$2;->val$placementID:Ljava/lang/String;

    iget-object v2, p0, Lcom/appnext/core/d$2$1;->ga:Lcom/appnext/core/d$2;

    iget-object v2, v2, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    iget-object v3, p0, Lcom/appnext/core/d$2$1;->ga:Lcom/appnext/core/d$2;

    iget-object v3, v3, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iget-object v4, p0, Lcom/appnext/core/d$2$1;->ga:Lcom/appnext/core/d$2;

    iget-object v4, v4, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v3, v4}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/appnext/core/d;->a(Ljava/lang/String;Lcom/appnext/core/Ad;Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3f

    return-void

    .line 253
    :catchall_3f
    iget-object v0, p0, Lcom/appnext/core/d$2$1;->ga:Lcom/appnext/core/d$2;

    iget-object v0, v0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iget-object v1, p0, Lcom/appnext/core/d$2$1;->ga:Lcom/appnext/core/d$2;

    iget-object v1, v1, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    const-string v2, "Internal error"

    invoke-virtual {v0, v2, v1}, Lcom/appnext/core/d;->b(Ljava/lang/String;Lcom/appnext/core/Ad;)V

    return-void
.end method
