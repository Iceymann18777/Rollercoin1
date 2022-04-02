.class Landroidx/media2/widget/Cea608CCParser;
.super Ljava/lang/Object;
.source "Cea608CCParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/Cea608CCParser$CCData;,
        Landroidx/media2/widget/Cea608CCParser$CCMemory;,
        Landroidx/media2/widget/Cea608CCParser$CCLineBuilder;,
        Landroidx/media2/widget/Cea608CCParser$MutableBackgroundColorSpan;,
        Landroidx/media2/widget/Cea608CCParser$PAC;,
        Landroidx/media2/widget/Cea608CCParser$StyleCode;,
        Landroidx/media2/widget/Cea608CCParser$DisplayListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mDisplay:Landroidx/media2/widget/Cea608CCParser$CCMemory;

.field private final mListener:Landroidx/media2/widget/Cea608CCParser$DisplayListener;

.field private mMode:I

.field private mNonDisplay:Landroidx/media2/widget/Cea608CCParser$CCMemory;

.field private mPrevCtrlCode:I

.field private mRollUpSize:I

.field private mTextMem:Landroidx/media2/widget/Cea608CCParser$CCMemory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "Cea608CCParser"

    const/4 v1, 0x3

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/widget/Cea608CCParser;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroidx/media2/widget/Cea608CCParser$DisplayListener;)V
    .registers 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput v0, p0, Landroidx/media2/widget/Cea608CCParser;->mMode:I

    const/4 v0, 0x4

    .line 81
    iput v0, p0, Landroidx/media2/widget/Cea608CCParser;->mRollUpSize:I

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Landroidx/media2/widget/Cea608CCParser;->mPrevCtrlCode:I

    .line 84
    new-instance v0, Landroidx/media2/widget/Cea608CCParser$CCMemory;

    invoke-direct {v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/Cea608CCParser;->mDisplay:Landroidx/media2/widget/Cea608CCParser$CCMemory;

    .line 85
    new-instance v0, Landroidx/media2/widget/Cea608CCParser$CCMemory;

    invoke-direct {v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/Cea608CCParser;->mNonDisplay:Landroidx/media2/widget/Cea608CCParser$CCMemory;

    .line 86
    new-instance v0, Landroidx/media2/widget/Cea608CCParser$CCMemory;

    invoke-direct {v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/Cea608CCParser;->mTextMem:Landroidx/media2/widget/Cea608CCParser$CCMemory;

    .line 89
    iput-object p1, p0, Landroidx/media2/widget/Cea608CCParser;->mListener:Landroidx/media2/widget/Cea608CCParser$DisplayListener;

    return-void
.end method

.method private getMemory()Landroidx/media2/widget/Cea608CCParser$CCMemory;
    .registers 3

    .line 118
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_29

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unrecoginized mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/widget/Cea608CCParser;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cea608CCParser"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser;->mDisplay:Landroidx/media2/widget/Cea608CCParser$CCMemory;

    return-object v0

    .line 124
    :cond_29
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser;->mTextMem:Landroidx/media2/widget/Cea608CCParser$CCMemory;

    return-object v0

    .line 120
    :cond_2c
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser;->mNonDisplay:Landroidx/media2/widget/Cea608CCParser$CCMemory;

    return-object v0

    .line 127
    :cond_2f
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser;->mDisplay:Landroidx/media2/widget/Cea608CCParser$CCMemory;

    return-object v0
.end method

.method private handleCtrlCode(Landroidx/media2/widget/Cea608CCParser$CCData;)Z
    .registers 7

    .line 188
    invoke-virtual {p1}, Landroidx/media2/widget/Cea608CCParser$CCData;->getCtrlCode()I

    move-result p1

    .line 190
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser;->mPrevCtrlCode:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    if-ne v0, p1, :cond_f

    .line 192
    iput v2, p0, Landroidx/media2/widget/Cea608CCParser;->mPrevCtrlCode:I

    return v1

    :cond_f
    const/4 v0, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_90

    .line 261
    :pswitch_15
    iput v2, p0, Landroidx/media2/widget/Cea608CCParser;->mPrevCtrlCode:I

    const/4 p1, 0x0

    return p1

    .line 254
    :pswitch_19
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser;->swapMemory()V

    .line 256
    iput v3, p0, Landroidx/media2/widget/Cea608CCParser;->mMode:I

    .line 257
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser;->updateDisplay()V

    goto/16 :goto_8c

    .line 250
    :pswitch_23
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser;->mNonDisplay:Landroidx/media2/widget/Cea608CCParser$CCMemory;

    invoke-virtual {v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->erase()V

    goto :goto_8c

    .line 239
    :pswitch_29
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser;->mMode:I

    if-ne v0, v4, :cond_37

    .line 240
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser;->getMemory()Landroidx/media2/widget/Cea608CCParser$CCMemory;

    move-result-object v0

    iget v2, p0, Landroidx/media2/widget/Cea608CCParser;->mRollUpSize:I

    invoke-virtual {v0, v2}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->rollUp(I)V

    goto :goto_3e

    .line 242
    :cond_37
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser;->getMemory()Landroidx/media2/widget/Cea608CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->cr()V

    .line 244
    :goto_3e
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser;->mMode:I

    if-ne v0, v4, :cond_8c

    .line 245
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser;->updateDisplay()V

    goto :goto_8c

    .line 235
    :pswitch_46
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser;->mDisplay:Landroidx/media2/widget/Cea608CCParser$CCMemory;

    invoke-virtual {v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->erase()V

    .line 236
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser;->updateDisplay()V

    goto :goto_8c

    .line 231
    :pswitch_4f
    iput v0, p0, Landroidx/media2/widget/Cea608CCParser;->mMode:I

    goto :goto_8c

    .line 227
    :pswitch_52
    iput v0, p0, Landroidx/media2/widget/Cea608CCParser;->mMode:I

    .line 228
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser;->mTextMem:Landroidx/media2/widget/Cea608CCParser$CCMemory;

    invoke-virtual {v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->erase()V

    goto :goto_8c

    .line 224
    :pswitch_5a
    iput v1, p0, Landroidx/media2/widget/Cea608CCParser;->mMode:I

    goto :goto_8c

    :pswitch_5d
    const-string v0, "Cea608CCParser"

    const-string v2, "Flash On"

    .line 220
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    :pswitch_65
    add-int/lit8 v0, p1, -0x23

    .line 210
    iput v0, p0, Landroidx/media2/widget/Cea608CCParser;->mRollUpSize:I

    .line 212
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser;->mMode:I

    if-eq v0, v4, :cond_77

    .line 213
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser;->mDisplay:Landroidx/media2/widget/Cea608CCParser$CCMemory;

    invoke-virtual {v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->erase()V

    .line 214
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser;->mNonDisplay:Landroidx/media2/widget/Cea608CCParser$CCMemory;

    invoke-virtual {v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->erase()V

    .line 217
    :cond_77
    iput v4, p0, Landroidx/media2/widget/Cea608CCParser;->mMode:I

    goto :goto_8c

    .line 205
    :pswitch_7a
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser;->getMemory()Landroidx/media2/widget/Cea608CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->der()V

    goto :goto_8c

    .line 202
    :pswitch_82
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser;->getMemory()Landroidx/media2/widget/Cea608CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->bs()V

    goto :goto_8c

    .line 199
    :pswitch_8a
    iput v3, p0, Landroidx/media2/widget/Cea608CCParser;->mMode:I

    .line 265
    :cond_8c
    :goto_8c
    iput p1, p0, Landroidx/media2/widget/Cea608CCParser;->mPrevCtrlCode:I

    return v1

    nop

    :pswitch_data_90
    .packed-switch 0x20
        :pswitch_8a
        :pswitch_82
        :pswitch_15
        :pswitch_15
        :pswitch_7a
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_5d
        :pswitch_5a
        :pswitch_52
        :pswitch_4f
        :pswitch_46
        :pswitch_29
        :pswitch_23
        :pswitch_19
    .end packed-switch
.end method

.method private handleDisplayableChars(Landroidx/media2/widget/Cea608CCParser$CCData;)Z
    .registers 4

    .line 135
    invoke-virtual {p1}, Landroidx/media2/widget/Cea608CCParser$CCData;->isDisplayableChar()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 140
    :cond_8
    invoke-virtual {p1}, Landroidx/media2/widget/Cea608CCParser$CCData;->isExtendedChar()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 141
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser;->getMemory()Landroidx/media2/widget/Cea608CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->bs()V

    .line 144
    :cond_15
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser;->getMemory()Landroidx/media2/widget/Cea608CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media2/widget/Cea608CCParser$CCData;->getDisplayText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->writeText(Ljava/lang/String;)V

    .line 146
    iget p1, p0, Landroidx/media2/widget/Cea608CCParser;->mMode:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_28

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2b

    .line 147
    :cond_28
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser;->updateDisplay()V

    :cond_2b
    return v0
.end method

.method private handleMidRowCode(Landroidx/media2/widget/Cea608CCParser$CCData;)Z
    .registers 3

    .line 154
    invoke-virtual {p1}, Landroidx/media2/widget/Cea608CCParser$CCData;->getMidRow()Landroidx/media2/widget/Cea608CCParser$StyleCode;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 156
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser;->getMemory()Landroidx/media2/widget/Cea608CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->writeMidRowCode(Landroidx/media2/widget/Cea608CCParser$StyleCode;)V

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method private handlePACCode(Landroidx/media2/widget/Cea608CCParser$CCData;)Z
    .registers 5

    .line 163
    invoke-virtual {p1}, Landroidx/media2/widget/Cea608CCParser$CCData;->getPAC()Landroidx/media2/widget/Cea608CCParser$PAC;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 166
    iget v0, p0, Landroidx/media2/widget/Cea608CCParser;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 167
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser;->getMemory()Landroidx/media2/widget/Cea608CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media2/widget/Cea608CCParser$PAC;->getRow()I

    move-result v1

    iget v2, p0, Landroidx/media2/widget/Cea608CCParser;->mRollUpSize:I

    invoke-virtual {v0, v1, v2}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->moveBaselineTo(II)V

    .line 169
    :cond_18
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser;->getMemory()Landroidx/media2/widget/Cea608CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->writePAC(Landroidx/media2/widget/Cea608CCParser$PAC;)V

    const/4 p1, 0x1

    return p1

    :cond_21
    const/4 p1, 0x0

    return p1
.end method

.method private handleTabOffsets(Landroidx/media2/widget/Cea608CCParser$CCData;)Z
    .registers 3

    .line 177
    invoke-virtual {p1}, Landroidx/media2/widget/Cea608CCParser$CCData;->getTabOffset()I

    move-result p1

    if-lez p1, :cond_f

    .line 180
    invoke-direct {p0}, Landroidx/media2/widget/Cea608CCParser;->getMemory()Landroidx/media2/widget/Cea608CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->tab(I)V

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method private swapMemory()V
    .registers 3

    .line 279
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser;->mDisplay:Landroidx/media2/widget/Cea608CCParser$CCMemory;

    .line 280
    iget-object v1, p0, Landroidx/media2/widget/Cea608CCParser;->mNonDisplay:Landroidx/media2/widget/Cea608CCParser$CCMemory;

    iput-object v1, p0, Landroidx/media2/widget/Cea608CCParser;->mDisplay:Landroidx/media2/widget/Cea608CCParser$CCMemory;

    .line 281
    iput-object v0, p0, Landroidx/media2/widget/Cea608CCParser;->mNonDisplay:Landroidx/media2/widget/Cea608CCParser$CCMemory;

    return-void
.end method

.method private updateDisplay()V
    .registers 4

    .line 272
    iget-object v0, p0, Landroidx/media2/widget/Cea608CCParser;->mListener:Landroidx/media2/widget/Cea608CCParser$DisplayListener;

    if-eqz v0, :cond_13

    .line 273
    invoke-interface {v0}, Landroidx/media2/widget/Cea608CCParser$DisplayListener;->getCaptionStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 274
    iget-object v1, p0, Landroidx/media2/widget/Cea608CCParser;->mListener:Landroidx/media2/widget/Cea608CCParser$DisplayListener;

    iget-object v2, p0, Landroidx/media2/widget/Cea608CCParser;->mDisplay:Landroidx/media2/widget/Cea608CCParser$CCMemory;

    invoke-virtual {v2, v0}, Landroidx/media2/widget/Cea608CCParser$CCMemory;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/media2/widget/Cea608CCParser$DisplayListener;->onDisplayChanged([Landroid/text/SpannableStringBuilder;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public parse([B)V
    .registers 5

    .line 93
    invoke-static {p1}, Landroidx/media2/widget/Cea608CCParser$CCData;->fromByteArray([B)[Landroidx/media2/widget/Cea608CCParser$CCData;

    move-result-object p1

    const/4 v0, 0x0

    .line 95
    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_40

    .line 96
    sget-boolean v1, Landroidx/media2/widget/Cea608CCParser;->DEBUG:Z

    if-eqz v1, :cond_17

    .line 97
    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroidx/media2/widget/Cea608CCParser$CCData;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cea608CCParser"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_17
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Landroidx/media2/widget/Cea608CCParser;->handleCtrlCode(Landroidx/media2/widget/Cea608CCParser$CCData;)Z

    move-result v1

    if-nez v1, :cond_3d

    aget-object v1, p1, v0

    .line 101
    invoke-direct {p0, v1}, Landroidx/media2/widget/Cea608CCParser;->handleTabOffsets(Landroidx/media2/widget/Cea608CCParser$CCData;)Z

    move-result v1

    if-nez v1, :cond_3d

    aget-object v1, p1, v0

    .line 102
    invoke-direct {p0, v1}, Landroidx/media2/widget/Cea608CCParser;->handlePACCode(Landroidx/media2/widget/Cea608CCParser$CCData;)Z

    move-result v1

    if-nez v1, :cond_3d

    aget-object v1, p1, v0

    .line 103
    invoke-direct {p0, v1}, Landroidx/media2/widget/Cea608CCParser;->handleMidRowCode(Landroidx/media2/widget/Cea608CCParser$CCData;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_3d

    .line 107
    :cond_38
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Landroidx/media2/widget/Cea608CCParser;->handleDisplayableChars(Landroidx/media2/widget/Cea608CCParser$CCData;)Z

    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_40
    return-void
.end method
