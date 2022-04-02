.class public Lcom/yandex/metrica/impl/ob/dk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/dk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dk;->a:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/dk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dk;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dk;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_14

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_14
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/dk;->a:Ljava/lang/String;

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dk;->b:Ljava/lang/String;

    return-object v0
.end method
