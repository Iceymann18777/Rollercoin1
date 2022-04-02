.class final Lcom/appnext/core/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/d;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fY:Lcom/appnext/core/d;

.field final synthetic gb:Ljava/lang/StringBuilder;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appnext/core/d;Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .registers 4

    .line 400
    iput-object p1, p0, Lcom/appnext/core/d$3;->fY:Lcom/appnext/core/d;

    iput-object p2, p0, Lcom/appnext/core/d$3;->gb:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/appnext/core/d$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/d$3;->gb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    return-void

    .line 407
    :cond_d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 408
    iget-object v2, p0, Lcom/appnext/core/d$3;->val$context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 1110
    invoke-static {v2, v3}, Lcom/appnext/core/f;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    .line 409
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    return-void

    :cond_22
    const-string v4, "aid"

    .line 411
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bids"

    const/4 v4, 0x0

    .line 412
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https://admin.appnext.com/AdminService.asmx/bns - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "https://admin.appnext.com/AdminService.asmx/bns"

    .line 414
    invoke-static {v0, v1}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_0 .. :try_end_49} :catchall_49

    :catchall_49
    return-void
.end method
