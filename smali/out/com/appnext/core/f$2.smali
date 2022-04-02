.class final Lcom/appnext/core/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic gG:Ljava/lang/String;

.field final synthetic gX:Ljava/lang/String;

.field final synthetic gY:Ljava/lang/String;

.field final synthetic gZ:Ljava/lang/String;

.field final synthetic ha:Ljava/lang/String;

.field final synthetic hb:Ljava/lang/String;

.field final synthetic hc:Ljava/lang/String;

.field final synthetic hd:Ljava/lang/String;

.field final synthetic he:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 578
    iput-object p1, p0, Lcom/appnext/core/f$2;->gX:Ljava/lang/String;

    iput-object p2, p0, Lcom/appnext/core/f$2;->gY:Ljava/lang/String;

    iput-object p3, p0, Lcom/appnext/core/f$2;->gG:Ljava/lang/String;

    iput-object p4, p0, Lcom/appnext/core/f$2;->gZ:Ljava/lang/String;

    iput-object p5, p0, Lcom/appnext/core/f$2;->ha:Ljava/lang/String;

    iput-object p6, p0, Lcom/appnext/core/f$2;->hb:Ljava/lang/String;

    iput-object p7, p0, Lcom/appnext/core/f$2;->hc:Ljava/lang/String;

    iput-object p8, p0, Lcom/appnext/core/f$2;->hd:Ljava/lang/String;

    iput-object p9, p0, Lcom/appnext/core/f$2;->he:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const-string v0, "UTF-8"

    const-string v1, "_"

    const-string v2, " "

    const-string v3, ""

    .line 584
    :try_start_8
    iget-object v4, p0, Lcom/appnext/core/f$2;->gX:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_13

    goto :goto_14

    :catchall_13
    move-object v4, v3

    .line 588
    :goto_14
    :try_start_14
    iget-object v5, p0, Lcom/appnext/core/f$2;->gY:Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1f

    goto :goto_20

    :catchall_1f
    move-object v0, v3

    :goto_20
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 591
    iget-object v5, p0, Lcom/appnext/core/f$2;->gG:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/appnext/core/f$2;->gZ:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string v5, "100"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v5, p0, Lcom/appnext/core/f$2;->ha:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/appnext/core/f$2;->hb:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/appnext/core/f$2;->hc:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/appnext/core/f$2;->hd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "0"

    if-eqz v2, :cond_56

    move-object v2, v4

    goto :goto_58

    :cond_56
    iget-object v2, p0, Lcom/appnext/core/f$2;->hd:Ljava/lang/String;

    :goto_58
    aput-object v2, v1, v0

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/appnext/core/f$2;->he:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    goto :goto_67

    :cond_65
    iget-object v4, p0, Lcom/appnext/core/f$2;->he:Ljava/lang/String;

    :goto_67
    aput-object v4, v1, v0

    const-string v0, "https://admin.appnext.com/tp12.aspx?tid=%s&vid=%s&osid=%s&auid=%s&session_id=%s&pid=%s&ref=%s&ads_type=%s&bid=%s&cid=%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 593
    :try_start_6f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "report: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 594
    invoke-static {v0, v1}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_7d
    .catchall {:try_start_6f .. :try_end_7d} :catchall_7e

    return-void

    :catchall_7e
    move-exception v0

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "report error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
