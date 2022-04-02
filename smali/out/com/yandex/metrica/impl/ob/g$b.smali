.class final Lcom/yandex/metrica/impl/ob/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Lcom/yandex/metrica/impl/ob/g;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/g;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/g$b;->a:Lcom/yandex/metrica/impl/ob/g;

    return-void
.end method

.method static synthetic a()Lcom/yandex/metrica/impl/ob/g;
    .registers 1

    .line 67
    sget-object v0, Lcom/yandex/metrica/impl/ob/g$b;->a:Lcom/yandex/metrica/impl/ob/g;

    return-object v0
.end method
