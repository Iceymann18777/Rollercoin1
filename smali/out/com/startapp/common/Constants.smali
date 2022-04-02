.class public Lcom/startapp/common/Constants;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field public static final DEBUG:Ljava/lang/Boolean;

.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/startapp/common/Constants;->DEBUG:Ljava/lang/Boolean;

    .line 44
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/startapp/common/Constants;->a:Ljava/lang/String;

    return-void

    :array_16
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x76t
        0x65t
        0x6et
        0x64t
        0x69t
        0x6et
        0x67t
    .end array-data
.end method

.method public static a()Ljava/lang/Boolean;
    .registers 1

    .line 47
    sget-object v0, Lcom/startapp/common/Constants;->DEBUG:Ljava/lang/Boolean;

    return-object v0
.end method
