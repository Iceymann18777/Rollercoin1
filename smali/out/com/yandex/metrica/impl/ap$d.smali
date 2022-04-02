.class Lcom/yandex/metrica/impl/ap$d;
.super Lcom/yandex/metrica/impl/ap$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 667
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ap$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .line 671
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap$d;->a:Ljava/lang/String;

    return-object v0
.end method
