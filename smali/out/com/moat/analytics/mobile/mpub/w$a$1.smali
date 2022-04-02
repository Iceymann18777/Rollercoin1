.class Lcom/moat/analytics/mobile/mpub/w$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/mpub/w$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/mpub/m;

.field final synthetic b:Lcom/moat/analytics/mobile/mpub/w$a;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/mpub/w$a;Lcom/moat/analytics/mobile/mpub/m;)V
    .registers 3

    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/w$a$1;->b:Lcom/moat/analytics/mobile/mpub/w$a;

    iput-object p2, p0, Lcom/moat/analytics/mobile/mpub/w$a$1;->a:Lcom/moat/analytics/mobile/mpub/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/w$a$1;->b:Lcom/moat/analytics/mobile/mpub/w$a;

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/w$a;->a(Lcom/moat/analytics/mobile/mpub/w$a;)Lcom/moat/analytics/mobile/mpub/w$e;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/w$a$1;->a:Lcom/moat/analytics/mobile/mpub/m;

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/mpub/w$e;->a(Lcom/moat/analytics/mobile/mpub/m;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    :goto_10
    return-void
.end method
