.class public Lcom/yandex/metrica/impl/ob/dn;
.super Lcom/yandex/metrica/impl/ob/do;
.source "SourceFile"


# instance fields
.field private b:Lcom/yandex/metrica/impl/ob/dm;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 12
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/do;-><init>(I)V

    .line 13
    new-instance v0, Lcom/yandex/metrica/impl/ob/dm;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/dm;-><init>(I)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dn;->b:Lcom/yandex/metrica/impl/ob/dm;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dn;->b:Lcom/yandex/metrica/impl/ob/dm;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dm;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_a

    .line 23
    :catch_a
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/do;->a()V

    return-void
.end method
