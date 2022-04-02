.class Lcom/yandex/metrica/impl/utils/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/utils/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static a:Lcom/yandex/metrica/impl/utils/k;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/yandex/metrica/impl/utils/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/utils/k;-><init>(B)V

    sput-object v0, Lcom/yandex/metrica/impl/utils/k$a;->a:Lcom/yandex/metrica/impl/utils/k;

    return-void
.end method
