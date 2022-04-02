.class public Lcom/yandex/metrica/impl/as;
.super Lcom/yandex/metrica/impl/au;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/as$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/au;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    return-void
.end method

.method public static u()Lcom/yandex/metrica/impl/at$a;
    .registers 1

    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/as$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/as$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/String;
    .registers 2

    .line 18
    invoke-super {p0}, Lcom/yandex/metrica/impl/au;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Z
    .registers 2

    .line 18
    invoke-super {p0}, Lcom/yandex/metrica/impl/au;->b()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Z
    .registers 2

    .line 18
    invoke-super {p0}, Lcom/yandex/metrica/impl/au;->c()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic e()V
    .registers 1

    .line 18
    invoke-super {p0}, Lcom/yandex/metrica/impl/au;->e()V

    return-void
.end method

.method public bridge synthetic f()V
    .registers 1

    .line 18
    invoke-super {p0}, Lcom/yandex/metrica/impl/au;->f()V

    return-void
.end method

.method public bridge synthetic o()Z
    .registers 2

    .line 18
    invoke-super {p0}, Lcom/yandex/metrica/impl/au;->o()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic p()J
    .registers 3

    .line 18
    invoke-super {p0}, Lcom/yandex/metrica/impl/au;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method protected s()J
    .registers 3

    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method protected t()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method
