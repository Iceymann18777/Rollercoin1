.class final Lcom/startapp/common/b/a$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/common/b/a;->c(ILcom/startapp/common/b/b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/startapp/common/b/b;


# direct methods
.method constructor <init>(IILcom/startapp/common/b/b;)V
    .registers 4

    .line 316
    iput p1, p0, Lcom/startapp/common/b/a$1;->a:I

    iput p2, p0, Lcom/startapp/common/b/a$1;->b:I

    iput-object p3, p0, Lcom/startapp/common/b/a$1;->c:Lcom/startapp/common/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 319
    invoke-static {}, Lcom/startapp/common/b/a;->a()Lcom/startapp/common/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/common/b/a;->a(Lcom/startapp/common/b/a;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/startapp/common/b/a$1;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_41

    .line 320
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/startapp/common/b/a$1;->b:I

    if-ne v0, v1, :cond_41

    .line 321
    iget-object v0, p0, Lcom/startapp/common/b/a$1;->c:Lcom/startapp/common/b/b;

    invoke-virtual {v0}, Lcom/startapp/common/b/b;->e()Z

    move-result v0

    if-nez v0, :cond_37

    .line 322
    invoke-static {}, Lcom/startapp/common/b/a;->a()Lcom/startapp/common/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/common/b/a;->a(Lcom/startapp/common/b/a;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/startapp/common/b/a$1;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_37
    iget-object v0, p0, Lcom/startapp/common/b/a$1;->c:Lcom/startapp/common/b/b;

    new-instance v1, Lcom/startapp/common/b/a$1$1;

    invoke-direct {v1, p0}, Lcom/startapp/common/b/a$1$1;-><init>(Lcom/startapp/common/b/a$1;)V

    invoke-static {v0, v1}, Lcom/startapp/common/b/a;->a(Lcom/startapp/common/b/b;Lcom/startapp/common/b/a/b$b;)Z

    :cond_41
    return-void
.end method
