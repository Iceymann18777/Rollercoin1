.class public final Lcom/yandex/metrica/impl/ob/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 80
    sput-object v1, Lcom/yandex/metrica/impl/ob/f;->a:[Ljava/lang/String;

    new-array v0, v0, [B

    .line 82
    sput-object v0, Lcom/yandex/metrica/impl/ob/f;->b:[B

    return-void
.end method

.method static a(II)I
    .registers 2

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method
