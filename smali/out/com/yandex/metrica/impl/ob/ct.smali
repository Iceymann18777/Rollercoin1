.class public Lcom/yandex/metrica/impl/ob/ct;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cq;
    .registers 3

    .line 17
    new-instance v0, Lcom/yandex/metrica/impl/ob/cs;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cs;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
