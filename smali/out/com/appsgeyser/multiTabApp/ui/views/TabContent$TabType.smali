.class public final enum Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;
.super Ljava/lang/Enum;
.source "TabContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/ui/views/TabContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

.field public static final enum PDF:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

.field public static final enum WEB:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 11
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    const-string v1, "WEB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->WEB:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    const-string v1, "PDF"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->PDF:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    sget-object v4, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->WEB:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->$VALUES:[Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;
    .registers 2

    .line 11
    const-class v0, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;
    .registers 1

    .line 11
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->$VALUES:[Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    invoke-virtual {v0}, [Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    return-object v0
.end method
