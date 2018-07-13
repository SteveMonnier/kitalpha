/*******************************************************************************
 * Copyright (c) 2018  Thales Global Services S.A.S.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 *  Contributors:
 *  Thales Global Services S.A.S - initial API and implementation
 *******************************************************************************/
package org.polarsys.kitalpha.massactions.edit.config;

import org.eclipse.nebula.widgets.nattable.NatTable;
import org.polarsys.kitalpha.massactions.core.config.MABodyMenuConfiguration;
import org.polarsys.kitalpha.massactions.edit.ui.menu.MEPopupMenuBuilder;

/**
 * A custom body menu configuration.
 * 
 * @author Sandu Postaru
 *
 */
public class MEBodyMenuConfiguration extends MABodyMenuConfiguration {

  public MEBodyMenuConfiguration(NatTable natTable) {
    super(natTable);
  }

  @Override
  protected MEPopupMenuBuilder createBodyHeaderMenu(NatTable natTable) {
    return new MEPopupMenuBuilder(natTable)
        .withEditSelectionMenuItem();
  }

}
