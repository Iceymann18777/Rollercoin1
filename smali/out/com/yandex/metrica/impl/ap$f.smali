.class Lcom/yandex/metrica/impl/ap$f;
.super Lcom/yandex/metrica/impl/ap$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 624
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ap$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()[B
    .registers 2

    .line 628
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap$f;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
