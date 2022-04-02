.class public Lcom/yandex/metrica/impl/ob/p;
.super Lcom/yandex/metrica/impl/ob/i;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/i;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/p;->a:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/p;->b:Ljava/lang/String;

    return-void
.end method
