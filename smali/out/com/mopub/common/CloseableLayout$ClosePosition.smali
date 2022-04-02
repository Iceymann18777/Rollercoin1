.class public final enum Lcom/mopub/common/CloseableLayout$ClosePosition;
.super Ljava/lang/Enum;
.source "CloseableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/CloseableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClosePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/CloseableLayout$ClosePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/CloseableLayout$ClosePosition;

.field public static final enum BOTTOM_CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

.field public static final enum BOTTOM_LEFT:Lcom/mopub/common/CloseableLayout$ClosePosition;

.field public static final enum BOTTOM_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;

.field public static final enum CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

.field public static final enum TOP_CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

.field public static final enum TOP_LEFT:Lcom/mopub/common/CloseableLayout$ClosePosition;

.field public static final enum TOP_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;


# instance fields
.field private final mGravity:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 58
    new-instance v0, Lcom/mopub/common/CloseableLayout$ClosePosition;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    const/16 v3, 0x33

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/CloseableLayout$ClosePosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_LEFT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    .line 59
    new-instance v0, Lcom/mopub/common/CloseableLayout$ClosePosition;

    const-string v1, "TOP_CENTER"

    const/4 v3, 0x1

    const/16 v4, 0x31

    invoke-direct {v0, v1, v3, v4}, Lcom/mopub/common/CloseableLayout$ClosePosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

    .line 60
    new-instance v0, Lcom/mopub/common/CloseableLayout$ClosePosition;

    const-string v1, "TOP_RIGHT"

    const/4 v4, 0x2

    const/16 v5, 0x35

    invoke-direct {v0, v1, v4, v5}, Lcom/mopub/common/CloseableLayout$ClosePosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    .line 61
    new-instance v0, Lcom/mopub/common/CloseableLayout$ClosePosition;

    const-string v1, "CENTER"

    const/4 v5, 0x3

    const/16 v6, 0x11

    invoke-direct {v0, v1, v5, v6}, Lcom/mopub/common/CloseableLayout$ClosePosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/CloseableLayout$ClosePosition;->CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

    .line 62
    new-instance v0, Lcom/mopub/common/CloseableLayout$ClosePosition;

    const-string v1, "BOTTOM_LEFT"

    const/4 v6, 0x4

    const/16 v7, 0x53

    invoke-direct {v0, v1, v6, v7}, Lcom/mopub/common/CloseableLayout$ClosePosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/CloseableLayout$ClosePosition;->BOTTOM_LEFT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    .line 63
    new-instance v0, Lcom/mopub/common/CloseableLayout$ClosePosition;

    const-string v1, "BOTTOM_CENTER"

    const/4 v7, 0x5

    const/16 v8, 0x51

    invoke-direct {v0, v1, v7, v8}, Lcom/mopub/common/CloseableLayout$ClosePosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/CloseableLayout$ClosePosition;->BOTTOM_CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

    .line 64
    new-instance v0, Lcom/mopub/common/CloseableLayout$ClosePosition;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v8, 0x6

    const/16 v9, 0x55

    invoke-direct {v0, v1, v8, v9}, Lcom/mopub/common/CloseableLayout$ClosePosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/common/CloseableLayout$ClosePosition;->BOTTOM_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/mopub/common/CloseableLayout$ClosePosition;

    .line 57
    sget-object v9, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_LEFT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    aput-object v9, v1, v2

    sget-object v2, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mopub/common/CloseableLayout$ClosePosition;->CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mopub/common/CloseableLayout$ClosePosition;->BOTTOM_LEFT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mopub/common/CloseableLayout$ClosePosition;->BOTTOM_CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/mopub/common/CloseableLayout$ClosePosition;->$VALUES:[Lcom/mopub/common/CloseableLayout$ClosePosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/mopub/common/CloseableLayout$ClosePosition;->mGravity:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/CloseableLayout$ClosePosition;
    .registers 2

    .line 57
    const-class v0, Lcom/mopub/common/CloseableLayout$ClosePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/CloseableLayout$ClosePosition;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/CloseableLayout$ClosePosition;
    .registers 1

    .line 57
    sget-object v0, Lcom/mopub/common/CloseableLayout$ClosePosition;->$VALUES:[Lcom/mopub/common/CloseableLayout$ClosePosition;

    invoke-virtual {v0}, [Lcom/mopub/common/CloseableLayout$ClosePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/CloseableLayout$ClosePosition;

    return-object v0
.end method


# virtual methods
.method getGravity()I
    .registers 2

    .line 73
    iget v0, p0, Lcom/mopub/common/CloseableLayout$ClosePosition;->mGravity:I

    return v0
.end method
