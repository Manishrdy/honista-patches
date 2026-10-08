.class public LX/Y/u1;
.super Ljava/lang/Object;

.method public static c()V
    .locals 0
    return-void
.end method

.method public static f()V
    .locals 0
    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .locals 15
    :try_start
    sget-object v0, LX/Y/u1;->a:Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    if-eq v0, v1, :done
    sput-object v1, LX/Y/u1;->a:Ljava/lang/Object;
    invoke-static {}, LX/Ojvnw321;->m()Ljava/lang/Object;
    move-result-object v0
    if-nez v0, :already
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v1
    const/16 v2, 0x80
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    move-result-object v0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    move-result v0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v13
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    move-result-object v0
    new-instance v12, Ljava/io/File;
    const-string v1, "quality"
    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0
    new-instance v3, Ljava/io/File;
    invoke-direct {v3, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :download
    const-string v0, "HonistaIntegrity"
    const-string v1, "quality cache hit"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    const-class v0, Ljava/io/File;
    const-string v1, "exists"
    const/4 v2, 0x0
    new-array v2, v2, [Ljava/lang/Class;
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    move-object v1, p0
    new-instance v2, Ljava/util/LinkedList;
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
    move-result-object v4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v5
    const-string v6, "StrOizfpdkbtfl"
    const-string v7, "StrXsrulpwlyna"
    new-instance v8, Ljava/util/HashMap;
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    const/4 v9, 0x2
    new-array v9, v9, [Ljava/lang/Object;
    invoke-static/range {v0 .. v9}, LX/Nvjwer23o223;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    goto :done
    :download
    const-string v0, "HonistaIntegrity"
    const-string v1, "quality download starting"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    new-instance v0, LX/Y/s1;
    move-object v1, v12
    const-class v2, Ljava/io/File;
    const-class v3, Ljava/lang/String;
    move-object v4, v13
    move-object v5, p0
    invoke-direct/range {v0 .. v5}, LX/Y/s1;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V
    new-instance v1, Ljava/lang/Thread;
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    goto :done
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :caught
    :already
    const-string v1, "HonistaIntegrity"
    const-string v2, "quality skipped, loader flag already set"
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :done
    return-void
    :caught
    move-exception v0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    sput-object v1, LX/Y/u1;->a:Ljava/lang/Object;
    const-string v1, "HonistaIntegrity"
    const-string v2, "Secondary module initialization failed"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-void
.end method

.method public static synthetic e(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 21

    const-string v0, "HonistaIntegrity"

    const-string v4, "quality request running"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Zoxsfmniwni"

    :try_start_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const-string v5, "StrQsgwibnquft"

    const v6, 0x49419

    invoke-static {v6}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "StrMtvzvxxdtyx"

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x4941d

    invoke-static {v4}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v9, v8, v11

    invoke-virtual {v6, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    const/16 v8, 0x7545

    invoke-static {v8}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v10

    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    const/16 v9, 0x63

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit16 v8, v8, 0x8fc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x5

    new-array v6, v4, [Ljava/lang/Object;

    const-class v8, LX/Y/k5;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const v9, 0xaae71

    invoke-static {v9}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    aget-object v8, v8, v10

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/16 v12, 0xf2

    invoke-virtual {v8, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v13, "Lajpbitkdqv"

    const-string v14, "Eyscodebpdb"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v7, v9, v10

    const/4 v7, 0x0

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const v13, 0x493e2

    invoke-static {v13}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v13

    new-array v14, v10, [Ljava/lang/Class;

    invoke-virtual {v9, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v13, v10, [Ljava/lang/Object;

    invoke-virtual {v9, v8, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move v9, v11

    :goto_0
    if-ge v9, v4, :cond_0

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v13, v6, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v6, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const-wide v12, 0x389d1b792c4582c3L    # 5.4744780042563645E-36

    const/16 v6, 0x2e4

    const/16 v9, 0x2a8

    :try_start_1
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    new-array v14, v5, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const v16, 0x4941e

    invoke-static/range {v16 .. v16}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v4

    new-array v11, v10, [Ljava/lang/Class;

    invoke-virtual {v7, v4, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v7, 0xc8

    if-eq v4, v7, :cond_1

    :try_start_2
    const-string v1, "HonistaIntegrity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quality download HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, LX/Y/u1;->a:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    return-void

    :cond_1
    :try_start_3
    const-string v4, "HonistaIntegrity"

    const-string v7, "quality HTTP 200"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v14, v10

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v5, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v14, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v15, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-wide v14, -0xa63de304a3ebdebL    # -3.379232502278411E258

    const/16 v11, 0x42a

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const v13, 0x49415

    invoke-static {v13}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v13

    new-array v6, v10, [Ljava/lang/Class;

    invoke-virtual {v12, v13, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v12, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const v12, 0x4941c

    invoke-static {v12}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v12

    new-array v13, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v12, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v12

    goto :goto_2

    :cond_3
    move v12, v10

    :goto_2
    const-string v13, "Jfqtvnliajn"

    const-string v14, "Sruuozpomlz"

    invoke-interface {v7, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v4, v10

    :goto_3
    const v13, 0x49416

    if-ge v4, v12, :cond_4

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v13}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v13

    new-array v9, v10, [Ljava/lang/Class;

    invoke-virtual {v15, v13, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v13, v10, [Ljava/lang/Object;

    invoke-virtual {v9, v14, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    const/16 v9, 0x2a8

    goto :goto_3

    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v13}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v6

    new-array v9, v10, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-wide v3, -0x58f09f51c94bafa3L

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const v7, 0x49417

    invoke-static {v7}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    const/4 v7, 0x7

    new-array v9, v7, [Ljava/lang/Object;

    const-string v11, "StrYrzacwlknwa"

    new-array v12, v5, [Ljava/lang/Class;

    aput-object v2, v12, v10

    const/4 v13, 0x1

    aput-object p2, v12, v13

    invoke-virtual {v2, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v12, v5, [Ljava/lang/Object;

    aput-object v1, v12, v10

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v13

    invoke-virtual {v2, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-array v12, v7, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const v14, 0x493e3

    invoke-static {v14}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v14

    new-array v15, v10, [Ljava/lang/Class;

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    new-array v14, v10, [Ljava/lang/Object;

    invoke-virtual {v13, v8, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v13, 0x1

    :goto_4
    if-ge v13, v7, :cond_6

    aput-object v11, v12, v13

    aput-object v9, v12, v13

    aput-object v6, v12, v13

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const v4, 0x49428

    invoke-static {v4}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v10, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const/16 v6, 0x211

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const v11, 0x4941f

    invoke-static {v11}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const v11, 0x49420

    invoke-static {v11}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "Lsrhsvhodmt"

    const-string v11, "Eudthjviatw"

    invoke-interface {v2, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const v4, 0x49421

    invoke-static {v4}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v12, "StrHnijviaezsy"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v14, v10

    invoke-virtual {v2, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    new-array v15, v13, [Ljava/lang/Object;

    aput-object v1, v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const/16 v14, 0x73

    const-string v15, "Ubwviasfezo"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    aput-object v6, v15, v10

    invoke-virtual {v9, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v13, v15, v10

    invoke-virtual {v6, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide v13, 0x4ee73c98cef023c4L    # 1.2829908429913597E72

    :try_start_5
    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x1000

    new-array v4, v4, [B

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v11, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const/16 v12, 0xa

    new-array v13, v12, [Ljava/lang/Object;

    const-string v14, "StrGorlohefzig"

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const v13, 0x49422

    invoke-static {v13}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v15, v10

    invoke-virtual {v11, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v13, v14, [Ljava/lang/Object;

    aput-object v4, v13, v10

    invoke-virtual {v11, v3, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v13, 0x4

    new-array v14, v13, [Ljava/lang/Object;

    new-array v15, v7, [Ljava/lang/Object;

    const/4 v7, -0x1

    if-ne v11, v7, :cond_8

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const/16 v11, 0x8

    new-array v14, v11, [Ljava/lang/Object;

    const-wide v18, 0x7c3f9b582c8c3feeL

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const v20, 0x49424

    invoke-static/range {v20 .. v20}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v13

    new-array v5, v10, [Ljava/lang/Class;

    invoke-virtual {v15, v13, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v13, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v14, v10

    const/4 v5, 0x1

    :goto_6
    if-ge v5, v11, :cond_7

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v14, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    invoke-interface {v7, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-class v5, LX/Y/u1;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const v7, 0xc3504

    invoke-static {v7}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    aget-object v5, v5, v10

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    const-wide v14, 0x148a0ebd2c7efe53L    # 9.907566857972184E-210

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v13, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v13, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v4, v7, v10

    const/4 v4, 0x1

    aput-object p4, v7, v4

    const/4 v4, 0x2

    aput-object v3, v7, v4

    const/4 v4, 0x3

    aput-object v1, v7, v4

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v12, 0x4

    aput-object v4, v7, v12

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x5

    aput-object v4, v7, v13

    const/4 v4, 0x6

    aput-object v1, v7, v4

    const/4 v1, 0x7

    aput-object v2, v7, v1

    const/16 v1, 0x8

    aput-object v9, v7, v1

    const/16 v1, 0x9

    aput-object v8, v7, v1

    const/4 v1, 0x0

    const-string v16, "HonistaIntegrity"

    const-string v17, "quality invoking loader"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v16, "HonistaIntegrity"

    const-string v17, "quality loader returned"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    sput-object v11, LX/Y/u1;->a:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const v5, 0x49425

    invoke-static {v5}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v7

    new-array v5, v10, [Ljava/lang/Class;

    invoke-virtual {v4, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    const/16 v4, 0x2a8

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v4, v0

    :try_start_8
    invoke-static {v4}, LX/Y/f2;->b(Ljava/lang/Exception;)V

    goto :goto_7

    :goto_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const v5, 0x49425

    invoke-static {v5}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    const/16 v3, 0x2e4

    goto :goto_a

    :catch_1
    move-exception v0

    move-object v3, v0

    :try_start_a
    invoke-static {v3}, LX/Y/f2;->b(Ljava/lang/Exception;)V

    goto :goto_9

    :goto_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide v2, 0x389d1b792c4582c3L    # 5.4744780042563645E-36

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_b
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_16

    :cond_8
    const/4 v5, 0x0

    const/4 v13, 0x5

    const/4 v5, 0x7

    const/4 v7, 0x1

    :goto_c
    if-ge v7, v5, :cond_9

    add-int v17, v11, v7

    :try_start_b
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_9
    const/4 v7, 0x1

    const/4 v15, 0x4

    :goto_d
    if-ge v7, v15, :cond_a

    mul-int v17, v7, v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_a
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const v14, 0x49423

    invoke-static {v14}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    new-array v5, v15, [Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v5, v10

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x1

    aput-object v15, v5, v16

    const/16 v17, 0x2

    aput-object v15, v5, v17

    invoke-virtual {v7, v14, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v7, v15

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x2

    aput-object v11, v7, v14

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    const/16 v11, 0x158

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move v5, v14

    const/4 v7, 0x7

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v7, v6

    goto/16 :goto_13

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v7, v6

    goto :goto_10

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_e

    :catch_3
    move-exception v0

    move-object v1, v0

    goto :goto_f

    :catchall_2
    move-exception v0

    move-object v1, v0

    const/4 v3, 0x0

    :goto_e
    const/4 v7, 0x0

    goto/16 :goto_13

    :catch_4
    move-exception v0

    move-object v1, v0

    const/4 v3, 0x0

    :goto_f
    const/4 v7, 0x0

    :goto_10
    :try_start_c
    const-string v2, "HonistaIntegrity"

    const-string v4, "quality load failed"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v2, LX/Y/u1;->a:Ljava/lang/Object;

    invoke-static {v1}, LX/Y/f2;->b(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    sput-object v2, LX/Y/u1;->a:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    if-eqz v7, :cond_b

    :try_start_e
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const v5, 0x49425

    invoke-static {v5}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v6

    new-array v5, v10, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_11

    :catch_5
    move-exception v0

    move-object v4, v0

    :try_start_f
    invoke-static {v4}, LX/Y/f2;->b(Ljava/lang/Exception;)V

    :cond_b
    :goto_11
    const/16 v4, 0x2a8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    if-eqz v3, :cond_c

    :try_start_10
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const v5, 0x49425

    invoke-static {v5}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    goto :goto_12

    :catch_6
    move-exception v0

    move-object v3, v0

    :try_start_11
    invoke-static {v3}, LX/Y/f2;->b(Ljava/lang/Exception;)V

    :cond_c
    :goto_12
    const/16 v3, 0x2e4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide v2, 0x389d1b792c4582c3L    # 5.4744780042563645E-36

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_b

    :catchall_3
    move-exception v0

    move-object v1, v0

    :goto_13
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v2, LX/Y/u1;->a:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    if-eqz v7, :cond_d

    :try_start_12
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const v6, 0x49425

    invoke-static {v6}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v8

    new-array v6, v10, [Ljava/lang/Class;

    invoke-virtual {v5, v8, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    goto :goto_14

    :catch_7
    move-exception v0

    move-object v5, v0

    :try_start_13
    invoke-static {v5}, LX/Y/f2;->b(Ljava/lang/Exception;)V

    :cond_d
    :goto_14
    const/16 v5, 0x2a8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    if-eqz v3, :cond_e

    :try_start_14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const v6, 0x49425

    invoke-static {v6}, LX/Y/k5;->b(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    goto :goto_15

    :catch_8
    move-exception v0

    move-object v3, v0

    :try_start_15
    invoke-static {v3}, LX/Y/f2;->b(Ljava/lang/Exception;)V

    :cond_e
    :goto_15
    const/16 v3, 0x2e4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide v3, 0x389d1b792c4582c3L    # 5.4744780042563645E-36

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    throw v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    :catch_9
    move-exception v0

    move-object v1, v0

    const-string v2, "HonistaIntegrity"

    const-string v3, "quality request failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v2, LX/Y/u1;->a:Ljava/lang/Object;

    invoke-static {v1}, LX/Y/f2;->b(Ljava/lang/Exception;)V

    :goto_16
    return-void
.end method
