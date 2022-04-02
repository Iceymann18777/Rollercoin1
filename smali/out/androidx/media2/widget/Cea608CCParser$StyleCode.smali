.class Landroidx/media2/widget/Cea608CCParser$StyleCode;
.super Ljava/lang/Object;
.source "Cea608CCParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleCode"
.end annotation


# static fields
.field static final sColorMap:[Ljava/lang/String;


# instance fields
.field final mColor:I

.field final mStyle:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "WHITE"

    const-string v1, "GREEN"

    const-string v2, "BLUE"

    const-string v3, "CYAN"

    const-string v4, "RED"

    const-string v5, "YELLOW"

    const-string v6, "MAGENTA"

    const-string v7, "INVALID"

    .line 297
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media2/widget/Cea608CCParser$StyleCode;->sColorMap:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(II)V
    .registers 3

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput p1, p0, Landroidx/media2/widget/Cea608CCParser$StyleCode;->mStyle:I

    .line 323
    iput p2, p0, Landroidx/media2/widget/Cea608CCParser$StyleCode;->mColor:I

    return-void
.end method

.method static fromByte(B)Landroidx/media2/widget/Cea608CCParser$StyleCode;
    .registers 4

    shr-int/lit8 v0, p0, 0x1

    const/4 v1, 0x7

    and-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_b

    const/4 p0, 0x2

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-ne v0, v1, :cond_11

    or-int/lit8 p0, p0, 0x1

    const/4 v0, 0x0

    .line 318
    :cond_11
    new-instance v1, Landroidx/media2/widget/Cea608CCParser$StyleCode;

    invoke-direct {v1, p0, v0}, Landroidx/media2/widget/Cea608CCParser$StyleCode;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method isItalics()Z
    .registers 3

    .line 327
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser$StyleCode;->mStyle:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method isUnderline()Z
    .registers 2

    .line 331
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser$StyleCode;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    sget-object v1, Landroidx/media2/widget/Cea608CCParser$StyleCode;->sColorMap:[Ljava/lang/String;

    iget v2, p0, Landroidx/media2/widget/Cea608CCParser$StyleCode;->mColor:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$StyleCode;->mStyle:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1e

    const-string v1, ", ITALICS"

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_1e
    iget v1, p0, Landroidx/media2/widget/Cea608CCParser$StyleCode;->mStyle:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_29

    const-string v1, ", UNDERLINE"

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    const-string v1, "}"

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
