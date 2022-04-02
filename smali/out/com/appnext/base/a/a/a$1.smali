.class final synthetic Lcom/appnext/base/a/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/base/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic dE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 61
    invoke-static {}, Lcom/appnext/base/a/a/a$a;->af()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/appnext/base/a/a/a$1;->dE:[I

    const/4 v1, 0x1

    :try_start_a
    sget v2, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull$53629b42:I

    sub-int/2addr v2, v1

    aput v1, v0, v2
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_f} :catch_f

    :catch_f
    :try_start_f
    sget-object v0, Lcom/appnext/base/a/a/a$1;->dE:[I

    sget v2, Lcom/appnext/base/a/a/a$a;->Global$53629b42:I

    sub-int/2addr v2, v1

    const/4 v1, 0x2

    aput v1, v0, v2
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method
