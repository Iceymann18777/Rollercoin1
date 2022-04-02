.class public final enum Lcom/tappx/sdk/android/TappxBanner$AdSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/sdk/android/TappxBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tappx/sdk/android/TappxBanner$AdSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BANNER_300x250:Lcom/tappx/sdk/android/TappxBanner$AdSize;

.field public static final enum BANNER_320x50:Lcom/tappx/sdk/android/TappxBanner$AdSize;

.field public static final enum BANNER_728x90:Lcom/tappx/sdk/android/TappxBanner$AdSize;

.field public static final enum SMART_BANNER:Lcom/tappx/sdk/android/TappxBanner$AdSize;

.field private static final synthetic c:[Lcom/tappx/sdk/android/TappxBanner$AdSize;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lcom/tappx/sdk/android/TappxBanner$AdSize;

    const-string v1, "SMART_BANNER"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/tappx/sdk/android/TappxBanner$AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tappx/sdk/android/TappxBanner$AdSize;->SMART_BANNER:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    .line 2
    new-instance v0, Lcom/tappx/sdk/android/TappxBanner$AdSize;

    const-string v1, "BANNER_320x50"

    const/4 v3, 0x1

    const/16 v4, 0x140

    const/16 v5, 0x32

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/tappx/sdk/android/TappxBanner$AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_320x50:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    .line 3
    new-instance v0, Lcom/tappx/sdk/android/TappxBanner$AdSize;

    const-string v1, "BANNER_728x90"

    const/4 v4, 0x2

    const/16 v5, 0x2d8

    const/16 v6, 0x5a

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/tappx/sdk/android/TappxBanner$AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_728x90:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    .line 4
    new-instance v0, Lcom/tappx/sdk/android/TappxBanner$AdSize;

    const-string v1, "BANNER_300x250"

    const/4 v5, 0x3

    const/16 v6, 0x12c

    const/16 v7, 0xfa

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/tappx/sdk/android/TappxBanner$AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_300x250:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/tappx/sdk/android/TappxBanner$AdSize;

    .line 5
    sget-object v6, Lcom/tappx/sdk/android/TappxBanner$AdSize;->SMART_BANNER:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    aput-object v6, v1, v2

    sget-object v2, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_320x50:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_728x90:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/tappx/sdk/android/TappxBanner$AdSize;->c:[Lcom/tappx/sdk/android/TappxBanner$AdSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/tappx/sdk/android/TappxBanner$AdSize;->a:I

    .line 3
    iput p4, p0, Lcom/tappx/sdk/android/TappxBanner$AdSize;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tappx/sdk/android/TappxBanner$AdSize;
    .registers 2

    .line 1
    const-class v0, Lcom/tappx/sdk/android/TappxBanner$AdSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tappx/sdk/android/TappxBanner$AdSize;

    return-object p0
.end method

.method public static values()[Lcom/tappx/sdk/android/TappxBanner$AdSize;
    .registers 1

    .line 1
    sget-object v0, Lcom/tappx/sdk/android/TappxBanner$AdSize;->c:[Lcom/tappx/sdk/android/TappxBanner$AdSize;

    invoke-virtual {v0}, [Lcom/tappx/sdk/android/TappxBanner$AdSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tappx/sdk/android/TappxBanner$AdSize;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/sdk/android/TappxBanner$AdSize;->b:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/sdk/android/TappxBanner$AdSize;->a:I

    return v0
.end method
