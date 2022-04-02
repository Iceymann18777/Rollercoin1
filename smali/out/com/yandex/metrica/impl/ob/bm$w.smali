.class public final Lcom/yandex/metrica/impl/ob/bm$w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "w"
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "name"

    const-string v1, "granted"

    .line 351
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/bm$w;->a:[Ljava/lang/String;

    return-void
.end method
