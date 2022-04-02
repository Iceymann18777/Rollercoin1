.class public final enum Lcom/mopub/mobileads/MoPubView$MoPubAdSize;
.super Ljava/lang/Enum;
.source "MoPubView.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$MoPubAdSizeInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MoPubAdSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/MoPubView$MoPubAdSize;",
        ">;",
        "Lcom/mopub/mobileads/MoPubView$MoPubAdSizeInt;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

.field public static final enum HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

.field public static final enum HEIGHT_280:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

.field public static final enum HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

.field public static final enum HEIGHT_90:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

.field public static final enum MATCH_VIEW:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;


# instance fields
.field private final mSizeInt:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 83
    new-instance v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    const-string v1, "MATCH_VIEW"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->MATCH_VIEW:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    .line 84
    new-instance v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    const-string v1, "HEIGHT_50"

    const/4 v3, 0x1

    const/16 v4, 0x32

    invoke-direct {v0, v1, v3, v4}, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    .line 85
    new-instance v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    const-string v1, "HEIGHT_90"

    const/4 v4, 0x2

    const/16 v5, 0x5a

    invoke-direct {v0, v1, v4, v5}, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_90:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    .line 86
    new-instance v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    const-string v1, "HEIGHT_250"

    const/4 v5, 0x3

    const/16 v6, 0xfa

    invoke-direct {v0, v1, v5, v6}, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    .line 87
    new-instance v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    const-string v1, "HEIGHT_280"

    const/4 v6, 0x4

    const/16 v7, 0x118

    invoke-direct {v0, v1, v6, v7}, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_280:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    .line 81
    sget-object v7, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->MATCH_VIEW:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    aput-object v7, v1, v2

    sget-object v2, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_90:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->$VALUES:[Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput p3, p0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->mSizeInt:I

    return-void
.end method

.method public static valueOf(I)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;
    .registers 2

    const/16 v0, 0x32

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_19

    const/16 v0, 0xfa

    if-eq p0, v0, :cond_16

    const/16 v0, 0x118

    if-eq p0, v0, :cond_13

    .line 115
    sget-object p0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->MATCH_VIEW:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object p0

    .line 112
    :cond_13
    sget-object p0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_280:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object p0

    .line 110
    :cond_16
    sget-object p0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object p0

    .line 108
    :cond_19
    sget-object p0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_90:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object p0

    .line 106
    :cond_1c
    sget-object p0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;
    .registers 2

    .line 81
    const-class v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/MoPubView$MoPubAdSize;
    .registers 1

    .line 81
    sget-object v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->$VALUES:[Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .registers 2

    .line 120
    iget v0, p0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->mSizeInt:I

    return v0
.end method
