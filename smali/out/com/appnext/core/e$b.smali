.class final Lcom/appnext/core/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/core/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field aQ:Ljava/lang/String;

.field final synthetic gB:Lcom/appnext/core/e;

.field gJ:Ljava/lang/String;

.field gK:Ljava/lang/String;

.field gL:Lcom/appnext/core/e$a;

.field gM:Ljava/lang/String;

.field gN:J


# direct methods
.method constructor <init>(Lcom/appnext/core/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/e$a;J)V
    .registers 9

    .line 57
    iput-object p1, p0, Lcom/appnext/core/e$b;->gB:Lcom/appnext/core/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/appnext/core/e$b;->gJ:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/appnext/core/e$b;->gK:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/appnext/core/e$b;->aQ:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Lcom/appnext/core/e$b;->gL:Lcom/appnext/core/e$a;

    .line 62
    iput-object p5, p0, Lcom/appnext/core/e$b;->gM:Ljava/lang/String;

    .line 63
    iput-wide p7, p0, Lcom/appnext/core/e$b;->gN:J

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;)V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/appnext/core/e$b;->gL:Lcom/appnext/core/e$a;

    if-eqz v0, :cond_7

    .line 74
    invoke-interface {v0, p1}, Lcom/appnext/core/e$a;->error(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final onMarket(Ljava/lang/String;)V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/appnext/core/e$b;->gL:Lcom/appnext/core/e$a;

    if-eqz v0, :cond_7

    .line 68
    invoke-interface {v0, p1}, Lcom/appnext/core/e$a;->onMarket(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
