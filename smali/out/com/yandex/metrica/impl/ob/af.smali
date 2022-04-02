.class public abstract Lcom/yandex/metrica/impl/ob/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/t;


# direct methods
.method protected constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/af;->a:Lcom/yandex/metrica/impl/ob/t;

    return-void
.end method


# virtual methods
.method protected a()Lcom/yandex/metrica/impl/ob/t;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/af;->a:Lcom/yandex/metrica/impl/ob/t;

    return-object v0
.end method

.method public abstract a(Lcom/yandex/metrica/impl/h;)Z
.end method
