.class interface abstract Lcom/yandex/metrica/impl/ob/bm$v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "v"
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "key"

    const-string v1, "value"

    const-string v2, "type"

    .line 395
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/bm$v;->a:[Ljava/lang/String;

    return-void
.end method
