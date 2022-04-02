.class final Lcom/appnext/core/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic gG:Ljava/lang/String;

.field final synthetic gY:Ljava/lang/String;

.field final synthetic gZ:Ljava/lang/String;

.field final synthetic ha:Ljava/lang/String;

.field final synthetic hb:Ljava/lang/String;

.field final synthetic hc:Ljava/lang/String;

.field final synthetic hd:Ljava/lang/String;

.field final synthetic he:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 606
    iput-object p1, p0, Lcom/appnext/core/f$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/appnext/core/f$3;->gG:Ljava/lang/String;

    iput-object p3, p0, Lcom/appnext/core/f$3;->gZ:Ljava/lang/String;

    iput-object p4, p0, Lcom/appnext/core/f$3;->ha:Ljava/lang/String;

    iput-object p5, p0, Lcom/appnext/core/f$3;->hb:Ljava/lang/String;

    iput-object p6, p0, Lcom/appnext/core/f$3;->gY:Ljava/lang/String;

    iput-object p7, p0, Lcom/appnext/core/f$3;->hc:Ljava/lang/String;

    iput-object p8, p0, Lcom/appnext/core/f$3;->hd:Ljava/lang/String;

    iput-object p9, p0, Lcom/appnext/core/f$3;->he:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/f$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/appnext/core/f;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    goto :goto_9

    :catchall_7
    const-string v0, ""

    :goto_9
    move-object v5, v0

    .line 614
    iget-object v1, p0, Lcom/appnext/core/f$3;->gG:Ljava/lang/String;

    iget-object v2, p0, Lcom/appnext/core/f$3;->gZ:Ljava/lang/String;

    iget-object v3, p0, Lcom/appnext/core/f$3;->ha:Ljava/lang/String;

    iget-object v4, p0, Lcom/appnext/core/f$3;->hb:Ljava/lang/String;

    iget-object v6, p0, Lcom/appnext/core/f$3;->gY:Ljava/lang/String;

    iget-object v7, p0, Lcom/appnext/core/f$3;->hc:Ljava/lang/String;

    iget-object v8, p0, Lcom/appnext/core/f$3;->hd:Ljava/lang/String;

    iget-object v9, p0, Lcom/appnext/core/f$3;->he:Ljava/lang/String;

    invoke-static/range {v1 .. v9}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
