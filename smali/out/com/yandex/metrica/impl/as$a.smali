.class Lcom/yandex/metrica/impl/as$a;
.super Lcom/yandex/metrica/impl/at$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/yandex/metrica/impl/at$a;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/at;
    .registers 3

    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/as;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/as;-><init>(Lcom/yandex/metrica/impl/ob/t;)V

    return-object v0
.end method
