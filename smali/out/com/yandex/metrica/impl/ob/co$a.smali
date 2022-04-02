.class Lcom/yandex/metrica/impl/ob/co$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/yandex/metrica/impl/ob/co;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/ob/co;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/co;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/co$a;->a:Lcom/yandex/metrica/impl/ob/co;

    return-void
.end method
