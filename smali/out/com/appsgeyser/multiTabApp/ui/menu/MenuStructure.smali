.class public Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;
.super Ljava/lang/Object;
.source "MenuStructure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;
    }
.end annotation


# static fields
.field static menuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    .line 15
    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0247

    const v3, 0x7f080167

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a024a

    const v3, 0x7f08016a

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a023e

    const v3, 0x7f080163

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0240

    const v3, 0x7f080172

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0246

    const v3, 0x7f080166

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0243

    const v3, 0x7f08015f

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a024b

    const v3, 0x7f080165

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0241

    const v3, 0x7f08015c

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0244

    const v3, 0x7f08015d

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0248

    const v3, 0x7f080161

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a023f

    const v3, 0x7f080164

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0245

    const v3, 0x7f080162

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0242

    const v3, 0x7f08015b

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0249

    const v3, 0x7f080169

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getIconResourceIdByItemId(I)I
    .registers 4

    .line 60
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    .line 61
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;->getItemId()I

    move-result v2

    if-ne v2, p0, :cond_6

    .line 62
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;->getIconResourceId()I

    move-result p0

    return p0

    :cond_1d
    const p0, -0xf4434

    return p0
.end method
