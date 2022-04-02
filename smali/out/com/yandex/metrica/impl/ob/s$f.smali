.class abstract Lcom/yandex/metrica/impl/ob/s$f;
.super Lcom/yandex/metrica/impl/ob/s$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "f"
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/db;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/db;)V
    .registers 3

    .line 240
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/s$e;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    .line 241
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/s$f;->a:Lcom/yandex/metrica/impl/ob/db;

    return-void
.end method


# virtual methods
.method public e()Lcom/yandex/metrica/impl/ob/db;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/s$f;->a:Lcom/yandex/metrica/impl/ob/db;

    return-object v0
.end method
