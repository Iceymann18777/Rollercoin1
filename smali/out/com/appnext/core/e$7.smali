.class final Lcom/appnext/core/e$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gB:Lcom/appnext/core/e;

.field final synthetic gE:Ljava/lang/String;

.field final synthetic gF:Ljava/lang/String;

.field final synthetic gG:Ljava/lang/String;

.field final synthetic gH:Ljava/lang/String;

.field final synthetic gI:Ljava/lang/String;

.field final synthetic val$placementID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appnext/core/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 488
    iput-object p1, p0, Lcom/appnext/core/e$7;->gB:Lcom/appnext/core/e;

    iput-object p2, p0, Lcom/appnext/core/e$7;->gE:Ljava/lang/String;

    iput-object p3, p0, Lcom/appnext/core/e$7;->gF:Ljava/lang/String;

    iput-object p4, p0, Lcom/appnext/core/e$7;->val$placementID:Ljava/lang/String;

    iput-object p5, p0, Lcom/appnext/core/e$7;->gG:Ljava/lang/String;

    iput-object p6, p0, Lcom/appnext/core/e$7;->gH:Ljava/lang/String;

    iput-object p7, p0, Lcom/appnext/core/e$7;->gI:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 492
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "guid"

    .line 493
    iget-object v2, p0, Lcom/appnext/core/e$7;->gE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bannerId"

    .line 494
    iget-object v2, p0, Lcom/appnext/core/e$7;->gF:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placementId"

    .line 495
    iget-object v2, p0, Lcom/appnext/core/e$7;->val$placementID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vid"

    .line 496
    iget-object v2, p0, Lcom/appnext/core/e$7;->gG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "url"

    .line 497
    iget-object v2, p0, Lcom/appnext/core/e$7;->gH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://admin.appnext.com/AdminService.asmx/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appnext/core/e$7;->gI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3b

    :catchall_3b
    return-void
.end method
