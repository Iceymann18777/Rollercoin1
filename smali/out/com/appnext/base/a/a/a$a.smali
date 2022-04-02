.class public final Lcom/appnext/base/a/a/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/base/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appnext/base/a/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$40a167d9:[I

.field public static final DatabaseOrDiskFull$53629b42:I = 0x2

.field public static final Global$53629b42:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    aput v0, v1, v3

    .line 22
    sput-object v1, Lcom/appnext/base/a/a/a$a;->$VALUES$40a167d9:[I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static af()[I
    .registers 1

    .line 22
    sget-object v0, Lcom/appnext/base/a/a/a$a;->$VALUES$40a167d9:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
